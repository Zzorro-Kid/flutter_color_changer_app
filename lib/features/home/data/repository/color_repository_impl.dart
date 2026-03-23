import '../../../../core/utils/color_utils.dart';
import '../../domain/entities/color_entity.dart';
import '../../domain/repository/color_repository.dart';

class ColorRepositoryImpl implements ColorRepository {
  @override
  ColorEntity generateColor() {
    return ColorEntity(color: ColorUtils.generateRandomColor());
  }
}
