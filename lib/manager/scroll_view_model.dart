import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ScrollViewModel extends ChangeNotifier {
  final ScrollController scrollController = ScrollController();
  bool _isAutoScroll = true;
  bool _userInteracting = false;
  bool get isAutoScroll => _isAutoScroll;

  ScrollViewModel() {
    scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (!scrollController.hasClients) return;

    final pos = scrollController.position;

    final distanceFromBottom = pos.maxScrollExtent - pos.pixels;

    if (distanceFromBottom < 20) {
      if (!_isAutoScroll) {
        _isAutoScroll = true;
        _userInteracting = false;
        notifyListeners();
      }
    }
  }

  void scrollToBottom() {
    if (!_isAutoScroll || _userInteracting) return;
    if (!scrollController.hasClients) return;

    SchedulerBinding.instance.addPostFrameCallback((_) {
      if (!scrollController.hasClients) return;
      if (!_isAutoScroll || _userInteracting) return;

      final max = scrollController.position.maxScrollExtent;
      scrollController.jumpTo(max);
    });
  }

  void onUserScroll() {
    _userInteracting = true;

    if (_isAutoScroll) {
      _isAutoScroll = false;
      notifyListeners();
    }
  }

  @override
  void dispose() {
    scrollController.removeListener(_onScroll);
    scrollController.dispose();
    super.dispose();
  }
}
