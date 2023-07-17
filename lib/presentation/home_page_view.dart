import 'package:flutter/material.dart';
import 'package:letterboxd/presentation/bloc/home_page_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/user.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users List'),
      ),
      body: BlocBuilder<HomePageBloc, HomePageState>(
        builder: (context, state) {
          return state.map(
            initial: (state) => const Center(child: Text('Initial')),
            loading: (state) =>
                const Center(child: CircularProgressIndicator.adaptive()),
            success: (state) => ListView.builder(
              itemCount: state.usersList.length,
              itemBuilder: (context, index) {
                final user = state.usersList[index];
                final pictureUrl = user.pictureUrl;

                return ListTile(
                  title: Text(user.firstName),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(user.lastName),
                      Text(user.email),
                    ],
                  ),
                  leading: SizedBox(
                    width: 50,
                    child: pictureUrl != null
                        ? Image.network(
                            user.pictureUrl!,
                            fit: BoxFit.cover,
                          )
                        : const SizedBox.shrink(),
                  ),
                );
              },
            ),
            error: (state) => const Center(child: Text('Error')),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (builder) => Dialog(
              child: BlocProvider.value(
                value: BlocProvider.of<HomePageBloc>(context),
                child: _AddUserForm(),
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _AddUserForm extends StatefulWidget {
  const _AddUserForm({
    super.key,
  });

  @override
  State<_AddUserForm> createState() => _AddUserFormState();
}

class _AddUserFormState extends State<_AddUserForm> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: firstNameController,
            autofocus: true,
            decoration: const InputDecoration(
              hintText: 'First name',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: lastNameController,
            decoration: const InputDecoration(
              hintText: 'Last name',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: emailController,
            decoration: const InputDecoration(
              hintText: 'Email',
              border: OutlineInputBorder(),
            ),
            onSubmitted: (_) => context.read<HomePageBloc>().add(
                  HomePageEvent.addUser(
                    User(
                      firstNameController.text,
                      lastNameController.text,
                      emailController.text,
                    ),
                  ),
                ),
          ),
          ElevatedButton(
            onPressed: () {
              context.read<HomePageBloc>().add(
                    HomePageEvent.addUser(
                      User(
                        firstNameController.text,
                        lastNameController.text,
                        emailController.text,
                      ),
                    ),
                  );
              Navigator.pop(context);
            },
            child: const Text('Add new user'),
          ),
        ],
      ),
    );
  }
}
