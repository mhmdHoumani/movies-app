class MovieModel {
  String _movieTitle;
  int _duration;
  String _date;
  String _imagePath;
  List<String> _images;

  String get getTitle => this._movieTitle;

  String get getDate => this._date;

  int get getDuration => this._duration;

  String get getImagePath => this._imagePath;

  List<String> get getImages => this._images;

  MovieModel(this._movieTitle, this._duration, this._date, this._imagePath,
      this._images);

  static List<MovieModel> getMovies() => <MovieModel>[
        MovieModel(
            "The Avengers",
            110,
            "15/02/2017",
            "https://th.bing.com/th/id/R.475f00131ccfa44426355198c3c55f99?rik=RYhuWMiftlLAnQ&pid=ImgRaw&r=0",
            [
              "https://th.bing.com/th/id/R.475f00131ccfa44426355198c3c55f99?rik=RYhuWMiftlLAnQ&pid=ImgRaw&r=0",
              "https://th.bing.com/th/id/OIP.JURZ3nZ209-jZWQXMSBgAgHaEK?w=313&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.sRQ0gpYw1rEyUNf7Xy2KAQHaDv?w=286&h=177&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.r9Vw6XUqYEm8gs7sB5-Y1QHaEG?w=318&h=180&c=7&o=5&pid=1.7"
            ]),
        MovieModel(
            "Titanic",
            135,
            "05/01/1996",
            "https://th.bing.com/th/id/OIP.0m70ouz5rSwT3NTAO-WsuQHaD9?w=334&h=180&c=7&o=5&pid=1.7",
            [
              "https://th.bing.com/th/id/OIP.0m70ouz5rSwT3NTAO-WsuQHaD9?w=334&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.iAjLXZf_KtcOeruLezk_fgHaE8?w=242&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.2fW7fp5DmzBUahHUhNiqvQHaDd?w=276&h=163&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.lfP9gE8xgyJjKUwMpUqoUwHaHa?w=175&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.FLq-URo8z38kOSwjlzvhYwHaLH?w=112&h=180&c=7&o=5&pid=1.7"
            ]),
        MovieModel(
            "Rambo",
            100,
            "12/05/1999",
            "https://th.bing.com/th/id/OIP.SdWmx-6Yfwr6Q8-C4R3EfAHaE8?w=248&h=180&c=7&o=5&pid=1.7",
            [
              "https://th.bing.com/th/id/OIP.SdWmx-6Yfwr6Q8-C4R3EfAHaE8?w=248&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP._SGWtLejB2ZV0rKkLEW8DgHaKS?w=120&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.FUgglla8S60YdATuFNuJogHaE8?w=235&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.Qdb98MAVSax92Tve8psECQHaDa?w=312&h=161&c=7&o=5&pid=1.7"
            ]),
        MovieModel(
            "I Am Legend",
            94,
            "20/10/2011",
            "https://th.bing.com/th/id/OIP.E57lbybp3g6vn1J8Sn6YHAHaKj?w=115&h=180&c=7&o=5&pid=1.7",
            [
              "https://th.bing.com/th/id/OIP.E57lbybp3g6vn1J8Sn6YHAHaKj?w=115&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.AfkfXhKm1II4Csz4NNXvYwHaD5?w=253&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.VGOWtZ5rvQ38ZhipP3bPXwHaGl?w=190&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.m_zBkfpv7PqOf4AOys_EWgHaKV?w=128&h=180&c=7&o=5&pid=1.7"
            ]),
        MovieModel(
            "Interstellar",
            120,
            "11/11/2015",
            "https://th.bing.com/th/id/OIP.Oz5RoGDYQjHtv1ytjrKSTgHaEK?w=257&h=180&c=7&o=5&pid=1.7",
            [
              "https://th.bing.com/th/id/OIP.Oz5RoGDYQjHtv1ytjrKSTgHaEK?w=257&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.fxRIqeo_b2KWovT-lPF-qAHaKT?w=115&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.QMz7EJ6pTMpuIn_NYWUdZQHaKj?w=115&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.1_Qt4CsIV5yLEo10Cz5RkgHaE8?w=214&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.w1OfvLvhWo4RKm6bHATq-wHaD5?w=335&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.AR4WPPmykS34j8W0y7wOeQHaD5?w=315&h=180&c=7&o=5&pid=1.7"
            ]),
        MovieModel(
            "Vikings",
            150,
            "01/03/2010",
            "https://th.bing.com/th/id/OIP.YAvFuTo3-gP93qtxyAkbbwHaE7?w=272&h=181&c=7&o=5&pid=1.7",
            [
              "https://th.bing.com/th/id/OIP.YAvFuTo3-gP93qtxyAkbbwHaE7?w=272&h=181&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.I98PBrIrysqPigwaIOK-fgHaEs?w=286&h=181&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.xa8p-VrALgKzrVwR945IIgHaLH?w=122&h=181&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.Z-jWnVlkkMmytMQQZiDE_QHaJs?w=136&h=180&c=7&o=5&pid=1.7"
            ]),
        MovieModel(
            "Game of Thrones",
            200,
            "21/12/2011",
            "https://th.bing.com/th/id/OIP.lKpFxgZ-jNULlsim7p_PgAHaK-?w=126&h=187&c=7&o=5&pid=1.7",
            [
              "https://th.bing.com/th/id/OIP.lKpFxgZ-jNULlsim7p_PgAHaK-?w=126&h=187&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.rWBeYHXLIEmftzL_a29pHQHaNK?w=115&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.IMNQl79rQxW6iGiFl5q7zQHaD4?w=345&h=181&c=7&o=5&pid=1.7"
            ]),
        MovieModel(
            "300",
            90,
            "15/02/2012",
            "https://th.bing.com/th/id/OIP.DaTWJV2fSQaMKPvSCW0TvgHaEK?w=299&h=180&c=7&o=5&pid=1.7",
            [
              "https://th.bing.com/th/id/OIP.DaTWJV2fSQaMKPvSCW0TvgHaEK?w=299&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.c2kto7w2S4VP001GqSoAewHaEK?w=215&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.36M8asrgWNzy8Vc5dAKxcwHaJ3?w=116&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.iqiu5k_W45vYqtLhZWF2twHaDK?w=244&h=149&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.arRI9zCZ_Cu-mh384IXp1AHaEg?w=243&h=180&c=7&o=5&pid=1.7"
            ]),
        MovieModel(
            "The Wolf of Wall Street",
            100,
            "30/04/2017",
            "https://th.bing.com/th/id/OIP.N81GlypjMETCtXnb-lA_JwHaE7?w=247&h=180&c=7&o=5&pid=1.7",
            [
              "https://th.bing.com/th/id/OIP.N81GlypjMETCtXnb-lA_JwHaE7?w=247&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.io07daWkujEW_3JU4kMvcAHaK-?w=115&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.Ggzp8F2g8wWIj5DCQJ-PMQHaE8?w=237&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.45mZe5giDJGNVOnV4cPrUAHaEW?w=260&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.3QOpc-1mmgUWfFM5czj-EgHaD3?w=284&h=180&c=7&o=5&pid=1.7"
            ]),
        MovieModel(
            "Justice League",
            220,
            "11/02/2021",
            "https://th.bing.com/th/id/OIP.Bo2AbekQjxxRp3qzhGRyWAHaE8?w=262&h=180&c=7&o=5&pid=1.7",
            [
              "https://th.bing.com/th/id/OIP.Bo2AbekQjxxRp3qzhGRyWAHaE8?w=262&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.EWolxmmQnjMx6LOBS2DwDQHaEK?w=255&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.YvFNOrqMulwLToE2qZ9MpwHaEK?w=329&h=185&c=7&o=5&pid=1.7"
            ]),
        MovieModel(
            "The Conjuring",
            90,
            "01/05/2013",
            "https://th.bing.com/th/id/OIP.XaSVwhSY-Z77w9Jd49fP2gHaE7?w=245&h=180&c=7&o=5&pid=1.7",
            [
              "https://th.bing.com/th/id/OIP.XaSVwhSY-Z77w9Jd49fP2gHaE7?w=245&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.9SEQ_4KoRJgcidnw3eNFPQHaK8?w=115&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.4iW4DDwHe-VfG2Xsh-z8mQHaGg?w=235&h=180&c=7&o=5&pid=1.7"
            ]),
        MovieModel(
            "Men in Black",
            115,
            "15/08/2012",
            "https://th.bing.com/th/id/OIP.KU90eAsfE_Vx_0aW6xY19wHaEo?w=282&h=180&c=7&o=5&pid=1.7",
            [
              "https://th.bing.com/th/id/OIP.KU90eAsfE_Vx_0aW6xY19wHaEo?w=282&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.-7nhy-Y-vMWXsj0xWdFXtAHaNK?w=115&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.L2qaKtsfMhKa_kjZClnfFwHaEK?w=333&h=187&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.gN0s0_b0PXyi-1rH2fsQPQHaEK?w=280&h=180&c=7&o=5&pid=1.7"
            ]),
        MovieModel(
            "Avatar",
            150,
            "01/03/2008",
            "https://th.bing.com/th/id/OIP.7R2iXRGmJfMSSpfqxVXa8AHaHa?w=175&h=180&c=7&o=5&pid=1.7",
            [
              "https://th.bing.com/th/id/OIP.7R2iXRGmJfMSSpfqxVXa8AHaHa?w=175&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.vqGo7bS4Tvwmf75vKbTA5QHaK-?w=115&h=180&c=7&o=5&pid=1.7",
            ]),
        MovieModel(
            "G.I. Joe",
            95,
            "07/07/20012",
            "https://th.bing.com/th/id/OIP.bHvUDp9QROiqcrPvXRurzgHaJd?w=182&h=232&c=7&o=5&pid=1.7",
            [
              "https://th.bing.com/th/id/OIP.bHvUDp9QROiqcrPvXRurzgHaJd?w=182&h=232&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.o_DGEIPRfNKPyHp6me7SiQHaLa?w=182&h=281&c=7&o=5&pid=1.7",
            ]),
        MovieModel(
            "Annabelle",
            120,
            "11/09/2015",
            "https://th.bing.com/th/id/OIP.Bo_OlvRTEkp35TiSP_G6nAHaKZ?w=182&h=255&c=7&o=5&pid=1.7",
            [
              "https://th.bing.com/th/id/OIP.Bo_OlvRTEkp35TiSP_G6nAHaKZ?w=182&h=255&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.6N0106LGbRVbFSINEVJ1FwHaK9?w=182&h=270&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.FYQc9Id_rAq5N6xa9Ph-cQHaEK?w=304&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.7rU2zsx8-mDregzosU36wgHaE7?w=230&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.7xJXQwLO0FniGoAQYcWZ1AHaEc?w=300&h=180&c=7&o=5&pid=1.7"
            ]),
        MovieModel(
            "Blade Runner",
            80,
            "25/01/2016",
            "https://th.bing.com/th/id/OIP.OqhYvj_DsOHZ9B1xxUoVXwHaEo?w=271&h=180&c=7&o=5&pid=1.7",
            [
              "https://th.bing.com/th/id/OIP.OqhYvj_DsOHZ9B1xxUoVXwHaEo?w=271&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.7eecCt1Aksq9N8iq4wtAaQHaEx?w=245&h=180&c=7&o=5&pid=1.7",
              "https://th.bing.com/th/id/OIP.kM6FlLPP3KsjkGRKAaJZDwHaEo?w=279&h=180&c=7&o=5&pid=1.7"
            ]),
      ];
}
