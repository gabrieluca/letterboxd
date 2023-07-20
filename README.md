# Letterboxd
A copy of my favorite movie app, applying the best practices 
I've learned so far in mobile development with Flutter.

## Highlights

### Code quality
- [Effective Dart Style](https://dart.dev/guides/language/effective-dart)
- [Dart Code Metrics](https://dcm.dev/docs/individuals/getting-started/)
- Inspirations: Clean Code, SOLID, Refactoring

### Clean Architecture with Bloc and Reactive Programming
Separation of UI code from logic:
- UI calls Events
- Bloc listens to these Events and executes some logic
- Bloc emits State
- UI listens to State and changes the screen accordingly

<img width="415" alt="Screenshot 2023-07-20 at 14 24 01" src="https://github.com/gabrieluca/letterboxd/assets/61849372/e1ba15a6-fa75-4e5f-8f01-b408b84f0c2a">

### Componentization
Only one widget per file and frequent extraction of widgets,
keeping the widget tree short.
<img width="361" alt="Screenshot 2023-07-20 at 14 25 58" src="https://github.com/gabrieluca/letterboxd/assets/61849372/a6217160-45fd-4b8b-82e8-11a06514f6e4">

### Custom Log
Logging of Services, HTTP requests, and Exceptions through the app to facilitate debugging.

<img width="345" alt="Screenshot 2023-07-20 at 13 40 44" src="https://github.com/gabrieluca/letterboxd/assets/61849372/b754a802-384c-4c49-9b06-2a59e39b3f1f">

## Next Steps

### Testing
- Unit test
- Usecase tests
- Golden Tests
- Integration Tests

### UI/UX principles
- Responsivity
- Adaptivity
- Theming
