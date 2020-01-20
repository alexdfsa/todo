import 'package:hasura_connect/hasura_connect.dart';

class HasuraUtils {
  HasuraUtils(this.sql);
  final String sql;

  static String urlHasura = 'http://localhost:8080/v1/graphql';
  HasuraConnect hasuraConnect = HasuraConnect(urlHasura);

  //get query
  Future<void> runQuery() async {
    return await hasuraConnect.query(sql);
  }

  //get query with cache
  Future<void> runCachedQuery() async {
    return await hasuraConnect.cachedQuery(sql);
  }

  Future<void> runMutation() async {
    return await hasuraConnect.mutation(sql);
  }
}
