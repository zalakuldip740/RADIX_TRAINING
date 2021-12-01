import 'package:daily_news/core/network/network_info.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockDataConnectionChecker extends Mock implements DataConnectionChecker {}

void main() {
  late NetworkInfoImpl networkInfoImpl;
  late MockDataConnectionChecker mockDataConnectionChecker;

  setUp(() {
    mockDataConnectionChecker = MockDataConnectionChecker();
    networkInfoImpl = NetworkInfoImpl(mockDataConnectionChecker);
  });
  test('isconnected', () async {
    final tHasConnectionFuture = Future.value(true);
    when(mockDataConnectionChecker.hasConnection)
        .thenAnswer((_) => tHasConnectionFuture);
    final result = networkInfoImpl.isConnected;
    verify(mockDataConnectionChecker.hasConnection);
    expect(result, tHasConnectionFuture);
  });
}
