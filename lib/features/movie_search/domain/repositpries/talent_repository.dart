import '../../data/models/talent.dart';

abstract class TalentRepository {
  Future<List<Talent>> searchTalentByName(String name);
}
