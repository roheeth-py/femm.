import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrackCycleNotifier extends StateNotifier< List<dynamic>>{
  TrackCycleNotifier():super([]);

  void add(var str){
    state = [str, ...state];
    print(state);
  }

  void remove(var str){
    state = state.where((e){
      return str != e;
    }).toList();
    print(state);
  }
}

final trackCycleProvider = StateNotifierProvider<TrackCycleNotifier, List<dynamic>>((ref) {
  return TrackCycleNotifier();
});