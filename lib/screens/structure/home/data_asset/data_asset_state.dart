import 'package:cryptovisor/core/entity/candle_data_entity.dart';
import 'package:cryptovisor/core/entity/crypto_data/exponential_moving_average_of_days.dart';
import 'package:cryptovisor/core/entity/crypto_data/relative_strength_index_model.dart';

class DataAssetState {
  List<RelativeStrengthIndexModel> rsi = [
    RelativeStrengthIndexModel(value: 100, date: DateTime.now()),
    RelativeStrengthIndexModel(value: 50, date: DateTime.now()),
    RelativeStrengthIndexModel(value: 80, date: DateTime.now()),
    RelativeStrengthIndexModel(value: 75, date: DateTime.now()),
    RelativeStrengthIndexModel(value: 65, date: DateTime.now()),
    RelativeStrengthIndexModel(value: 68, date: DateTime.now()),
    RelativeStrengthIndexModel(value: 63, date: DateTime.now()),
    RelativeStrengthIndexModel(value: 41, date: DateTime.now()),
    RelativeStrengthIndexModel(value: 43, date: DateTime.now()),
  ];

  List<CandleDataEntity> candles = [
    CandleDataEntity(
      timestamp: DateTime(2024, 1, 1),
      open: 2.3,
      high: 10.0,
      low: 1.0,
      close: 2.5,
    ),
    CandleDataEntity(
      timestamp: DateTime(2024, 1, 1),
      open: 2.3,
      high: 8.0,
      low: 2.0,
      close: 2.5,
    ),
    CandleDataEntity(
      timestamp: DateTime(2024, 1, 1),
      open: 2.3,
      high: 7.0,
      low: 3.0,
      close: 2.5,
    ),
    CandleDataEntity(
      timestamp: DateTime(2024, 1, 1),
      open: 2.3,
      high: 3.0,
      low: 1.5,
      close: 2.5,
    ),
    CandleDataEntity(
      timestamp: DateTime(2024, 1, 1),
      open: 2.3,
      high: 3.2,
      low: 1.0,
      close: 2.5,
    ),
    CandleDataEntity(
      timestamp: DateTime(2024, 1, 1),
      open: 2.3,
      high: 2.3,
      low: 1.0,
      close: 1.7,
    ),
    CandleDataEntity(
      timestamp: DateTime(2024, 1, 1),
      open: 2.3,
      high: 2.3,
      low: 2.0,
      close: 2.0,
    ),
  ];

  DataAssetState copyWith({
    List<RelativeStrengthIndexModel>? rsi,
    List<CandleDataEntity>? candles,
  }) {
    return DataAssetState()
      ..rsi = rsi ?? this.rsi
      ..candles = candles ?? this.candles;
  }
}
