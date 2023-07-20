import 'package:flutter/material.dart';

class SliverExamples extends StatefulWidget {
  const SliverExamples({super.key});

  @override
  State createState() => _SliverExamplesState();
}

class _SliverExamplesState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // / Appbar useful for showing images that stretch and
          // / collapse when the user scrolls
          const SliverAppBar(
            pinned: true,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('CustomScrollView'),
              centerTitle: true,
            ),
          ),

          /// Fixed size component (not a list)
          SliverToBoxAdapter(
            child: Container(
              color: Colors.tealAccent,
              alignment: Alignment.center,
              height: 200,
              child: const Text('This is Container'),
            ),
          ),
          SliverGrid(
            /// Example fixing the width (if Axis.vertical)
            /// or height (if Axis.horizontal) of the items in the cross axis
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 4,
            ),

            /// Same example fixing the number of items in the cross axis
            // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //   crossAxisCount: 4,
            //   childAspectRatio: 4.0,
            //   crossAxisSpacing: 10.0,
            //   mainAxisSpacing: 10.0,
            // ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('Grid Item $index'),
                );
              },
              childCount: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.amberAccent,
              alignment: Alignment.center,
              height: 200,
              child: const Text('This is Container'),
            ),
          ),

          /// Horizontal List (needs to have a fixed height dimension)
          SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
              child: IntrinsicHeight(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 100,
                      child: Card(
                        color: Colors.cyan[100 * (index % 9)],
                        child: Text('Item $index'),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),

          SliverFixedExtentList(
            itemExtent: 50,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index % 9)],
                  child: Text('List Item $index'),
                );
              },
              childCount: 20,
            ),
          ),

          /// Each child fills the viewport
          SliverFillViewport(
            delegate: SliverChildListDelegate(
              [
                Container(
                  color: Colors.red,
                  height: 200,
                  child: const Text('This is Container'),
                ),
                Container(
                  color: Colors.green,
                  height: 200,
                  child: const Text('This is Container'),
                ),
                Container(
                  color: Colors.blue,
                  height: 200,
                  child: const Text('This is Container'),
                ),
              ],
            ),
          ),

          /// Fills the remaining space
          /// If the viewport is full, sizes its child's size
          /// If hasScrollBody is true, sizes to the whole screen size
          /// Usually it's the last item on the screen
          SliverFillRemaining(
            fillOverscroll: true, // Stretch the content when overscrolling
            hasScrollBody: false,
            child: Container(
              // height: 200,
              color: Colors.lightGreenAccent,
              alignment: Alignment.center,
              child: const Icon(Icons.abc, size: 100),
            ),
          ),
        ],
      ),
    );
  }
}
