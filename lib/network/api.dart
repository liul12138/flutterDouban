class MovieApi {
  //豆瓣公告接口
  MovieApi({this.id, this.q});
  var id;
  //搜索query
  var q;
  static const BASE_URL = 'https://api.douban.com';
  //apiKey
  //top250排名
  static const TOP250 = '/v2/movie/top250';
  //口碑榜
  static const WEEKLY = '/v2/movie/weekly';
  //正在热映
  static const IN_THEATERS = "/v2/movie/in_theaters";
  //即将上映
  static const COMING_SOON = "/v2/movie/coming_soon";
  //电影条目(require a id )
  get MOVIE_SUBJECT {
    return "/v2/movie/subject/$id";
  }

  //影人条目信息(require a id )
  get CELETRIBY {
    return "/v2/movie/celebrity";
  }

  //电影条目剧照
  get MOVIE_PHOTO {
    return "/v2/movie/subject/$id/photos";
  }

  //电影条目影评列表
  get MOVIE_REVIEW {
    return "/v2/movie/subject/$id/reviews";
  }

  //电影条目短评
  get MOVIE_COMMENT {
    return "/v2/movie/subject/$id/comments";
  }

//影人作品
  get CELEBRITY_WORK {
    return "/v2/movie/celebrity/$id/works";
  }

//电影搜索
  get MOVIE_SEARCH {
    return "/v2/movie/search?q=$q";
  }
}
