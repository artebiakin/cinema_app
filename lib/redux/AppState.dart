class AppState {
  final int counter;

  AppState(this.counter);
}

enum $Actions { Increment, Deincrement }

AppState reducer(AppState state, dynamic action) {
  if (action == $Actions.Increment) {
    return AppState(state.counter + 1);
  } else if (action == $Actions.Deincrement) {
    return AppState(state.counter - 1);
  }
  return state;
}

// class AppState {
//   final List selected;

//   AppState(this.selected);
// }

// enum $Actions { Increment, Deincrement }

// AppState reducer(AppState state, dynamic action) {
//   if (action == $Actions.Increment) {
//     return AppState(List.from(state.selected)..add(action.item));
//   } else if (action == $Actions.Deincrement) {
//     return AppState(List.from(state.selected)..remove(action.item));
//   }
//   return state;
// }
