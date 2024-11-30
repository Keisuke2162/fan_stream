import 'package:fan_stream/entities/streamer/streamer.dart';

final List<Streamer> mockStreamers = [
  // Hololive
  Streamer(
      id: 0,
      yourubeId: "UCyl1z3jo3XHR1riLFKG5UAg",
      name: "Watson Amelia",
      thumbnailUrl:
          "https://yt3.ggpht.com/RZ4Fp3L6_zyq6YA7s5WnH8-22iezMLwdJhtkBgs_EAb06mvMCnF59JKMNu9YPCqb7nhaeXMdPvY=s88-c-k-c0x00ffffff-no-rj",
      colorCode: 0xfff2bd36,
      group: StreamGroup.hololive),
  Streamer(
      id: 1,
      yourubeId: "UCgmPnx-EEeOrZSg5Tiw7ZRQ",
      name: "Hakos Baelz",
      thumbnailUrl:
          "https://yt3.ggpht.com/9FFCT3cu9FxyLJUUFovpPI7WRj0I7_KuApwkEaLsD0NHVVL2OPTtGn8Qga5YFbeC_47-MoEXrA=s88-c-k-c0x00ffffff-no-rj",
      colorCode: 0xfffe3a2d,
      group: StreamGroup.hololive),
  Streamer(
      id: 2,
      yourubeId: "UCoSrY_IQQVpmIRZ9Xf-y93g",
      name: "Gawr Gura",
      thumbnailUrl:
          "https://yt3.ggpht.com/uMUat6yJL2_Sk6Wg2-yn0fSIqUr_D6aKVNVoWbgeZ8N-edT5QJAusk4PI8nmPgT_DxFDTyl8=s88-c-k-c0x00ffffff-no-rj",
      colorCode: 0xff3a69b2,
      group: StreamGroup.hololive),
  Streamer(
      id: 3,
      yourubeId: "UCt9H_RpQzhxzlyBxFqrdHqA",
      name: "Fuwawa",
      thumbnailUrl:
          "https://yt3.ggpht.com/zt63obGOD6fnCX0elnzt8xkylqOTnAENmSCKmwg_PSiC857DDgB28kEjQ-FJlWGtNYZ9lqzEag=s88-c-k-c0x00ffffff-no-rj",
      colorCode: 0xff2d87f7,
      group: StreamGroup.hololive),
  Streamer(
      id: 4,
      yourubeId: "UCt9H_RpQzhxzlyBxFqrdHqA",
      name: "Mococo",
      thumbnailUrl:
          "https://yt3.ggpht.com/zt63obGOD6fnCX0elnzt8xkylqOTnAENmSCKmwg_PSiC857DDgB28kEjQ-FJlWGtNYZ9lqzEag=s88-c-k-c0x00ffffff-no-rj",
      colorCode: 0xffff82c9,
      group: StreamGroup.hololive),

// Vspo
  Streamer(
      id: 5,
      yourubeId: "UCyLGcqYs7RsBb3L0SJfzGYA",
      name: "花芽すみれ",
      thumbnailUrl:
          "https://yt3.ggpht.com/APAsqm3dhe7Qdul-5hEVDfrME8TQNwWqOIaPckuDzoMwfNQ0Rc_LPB1sUGbuzqnAJysqMLTkCw=s88-c-k-c0x00ffffff-no-rj",
      colorCode: 0xffb0c4de,
      group: StreamGroup.vspo),
  Streamer(
      id: 6,
      yourubeId: "UCiMG6VdScBabPhJ1ZtaVmbw",
      name: "花芽なずな",
      thumbnailUrl:
          "https://yt3.ggpht.com/iEewPzzWzO90VlnXPb8g-SQvrjbRU3XL0uyBlltPqTsVWdAwCjz4QQf4PK929QlHUsUt6adUdEU=s88-c-k-c0x00ffffff-no-rj",
      colorCode: 0xfffabedc,
      group: StreamGroup.vspo),
  Streamer(
      id: 7,
      yourubeId: "UCgTzsBI0DIRopMylJEDqnog",
      name: "小雀とと",
      thumbnailUrl:
          "https://yt3.ggpht.com/ytc/AIdro_lEifEusAxSkqQg12z_wUO1bGfGIqo9Vv4OYz6X5BhCIg=s88-c-k-c0x00ffffff-no-rj",
      colorCode: 0xfff5eb4a,
      group: StreamGroup.vspo),
  Streamer(
      id: 8,
      yourubeId: "UC5LyYg6cCA4yHEYvtUsir3g",
      name: "一ノ瀬うるは",
      thumbnailUrl:
          "https://yt3.ggpht.com/ytc/AIdro_myySkwnJbRZM78Ct6Zqok5H0oegoEjLOtg6sdq117VRAM=s88-c-k-c0x00ffffff-no-rj",
      colorCode: 0xff4182fa,
      group: StreamGroup.vspo),
  Streamer(
      id: 9,
      yourubeId: "UCIcAj6WkJ8vZ7DeJVgmeqKw",
      name: "胡桃のあ",
      thumbnailUrl:
          "https://yt3.ggpht.com/_BNEc4IHu2lbfF0QWQzRBJHaKmCyeBMUcJjX_SsDqPr6Tc9EX20ujJBQ1rmbLjqi7xRepR3oCw=s88-c-k-c0x00ffffff-no-rj",
      colorCode: 0xffffdbfe,
      group: StreamGroup.vspo),
  Streamer(
      id: 10,
      yourubeId: "UCnvVG9RbOW3J6Ifqo-zKLiw",
      name: "兎咲ミミ",
      thumbnailUrl:
          "https://yt3.ggpht.com/-qdF64Uazz9BmX8Njq61TDSOtMZSBtnQ303FKryqEMeE2qDhlpZNRbQNmPYKPCNvmPOCA1clhg=s88-c-k-c0x00ffffff-no-rj",
      colorCode: 0xffc7b2d6,
      group: StreamGroup.vspo),
  Streamer(
      id: 11,
      yourubeId: "UCF_U2GCKHvDz52jWdizppIA",
      name: "空澄セナ",
      thumbnailUrl:
          "https://yt3.ggpht.com/7M4bq-eX19nDu1Mzf6RWdHSpyCNP1USrfJ2oTfWgCTiIv31G3-7Sbdf4QzTRemQiEYRTEE0L9g=s88-c-k-c0x00ffffff-no-rj",
      colorCode: 0xffffffff,
      group: StreamGroup.vspo),
  Streamer(
      id: 12,
      yourubeId: "UCvUc0m317LWTTPZoBQV479A",
      name: "橘ひなの",
      thumbnailUrl:
          "https://yt3.ggpht.com/76a_ty_OwF-nJWNuuxxeJokcgqlmkKCHwXSto9cKKkyjPO2agiu5Tc7t4f6dz5uaab7X8U5mVQ=s88-c-k-c0x00ffffff-no-rj",
      colorCode: 0xfffa96c8,
      group: StreamGroup.vspo),
  Streamer(
      id: 13,
      yourubeId: "UCurEA8YoqFwimJcAuSHU0MQ",
      name: "英リサ",
      thumbnailUrl:
          "https://yt3.ggpht.com/ytc/AIdro_nDEKrUIjF9DlTu-bEc-DenqIj-md5YkUqhGhqwyBLBgQ=s88-c-k-c0x00ffffff-no-rj",
      colorCode: 0xffd1de79,
      group: StreamGroup.vspo),
  Streamer(
      id: 14,
      yourubeId: "UCGWa1dMU_sDCaRQjdabsVgg",
      name: "如月れん",
      thumbnailUrl:
          "https://yt3.ggpht.com/U2M8O-qwS0vrjAr7nYk9y58xAV-I80eRn1jn1MX6pmsGcMdtUhMmgRekSAun2ca2Db7ntFuwwQ=s88-c-k-c0x00ffffff-no-rj",
      colorCode: 0xffbe2152,
      group: StreamGroup.vspo),
  Streamer(
      id: 15,
      yourubeId: "UCMp55EbT_ZlqiMS3lCj01BQ",
      name: "神成きゅぴ",
      thumbnailUrl:
          "https://yt3.ggpht.com/aGHxz__F6cpkUBAEmbOgL1aHxwl8Xec6Z3qkGJlHg8zjUfUpw5V29ifuYJD3elGkhdI5tiaBSQ=s88-c-k-c0x00ffffff-no-rj",
      colorCode: 0xffffd23c,
      group: StreamGroup.vspo),
  Streamer(
      id: 16,
      yourubeId: "UCjXBuHmWkieBApgBhDuJMMQ",
      name: "八雲べに",
      thumbnailUrl:
          "https://yt3.ggpht.com/Sj_DDAvj1RvPVy-C8SUPe29zQAkOUqFYgAzkM-_UUyJOEL_xVdTFRuvB9L1s121dWnMY5DZ1FA=s88-c-k-c0x00ffffff-no-rj",
      colorCode: 0xff85cab3,
      group: StreamGroup.vspo),
  Streamer(
      id: 17,
      yourubeId: "UCPkKpOHxEDcwmUAnRpIu-Ng",
      name: "藍沢エマ",
      thumbnailUrl:
          "https://yt3.ggpht.com/oIps6UVvqtpJykcdjYYyRvhdcyVoR1wAdH8CnTp4msMaKYdn8XMLj4FHsLoqfWaJzbLJKSPjCg=s88-c-k-c0x00ffffff-no-rj",
      colorCode: 0xffb4f1f9,
      group: StreamGroup.vspo),
  Streamer(
      id: 18,
      yourubeId: "UCD5W21JqNMv_tV9nfjvF9sw",
      name: "紫宮るな",
      thumbnailUrl:
          "https://yt3.ggpht.com/nHOf1h_guQXgrCw-E3rDcEKV2r8wvOUys7_3lrvKsDWu-Fbf5VT_mBwCNglvWpaNGonWWjmcdQ=s88-c-k-c0x00ffffff-no-rj",
      colorCode: 0xffd6adff,
      group: StreamGroup.vspo),
  Streamer(
      id: 19,
      yourubeId: "UCIjdfjcSaEgdjwbgjxC3ZWg",
      name: "猫汰つな",
      thumbnailUrl:
          "https://yt3.ggpht.com/TDn7-FHas27cTkn2ILrg4pWaizLw8ySaCwD0mp6G6zmu843q4lZZgqYGJtMnoAobGBFGG6BZ=s88-c-k-c0x00ffffff-no-rj",
      colorCode: 0xffff3652,
      group: StreamGroup.vspo),
  Streamer(
      id: 20,
      yourubeId: "UC61OwuYOVuKkpKnid-43Twg",
      name: "白波らむね",
      thumbnailUrl:
          "https://yt3.ggpht.com/89CDsuDU9WD9o-_LQg1hqEvntFzihLLPnIx5mR4A0oBs0jc6pGV_aMdWz8CO3T-WbURePtdGbA=s88-c-k-c0x00ffffff-no-rj",
      colorCode: 0xff8eced9,
      group: StreamGroup.vspo),
  Streamer(
      id: 21,
      yourubeId: "UCzUNASdzI4PV5SlqtYwAkKQ",
      name: "小森めと",
      thumbnailUrl:
          "https://yt3.ggpht.com/t557GNcLS_5tgJCkbA7qaEs7XrogCmScjWRauTQRtknc7VXuGMF18YjeLVHFEarbkRN5pWOF=s88-c-k-c0x00ffffff-no-rj",
      colorCode: 0xfffba03f,
      group: StreamGroup.vspo),
  Streamer(
      id: 22,
      yourubeId: "UCS5l_Y0oMVTjEos2LuyeSZQ",
      name: "夢野あかり",
      thumbnailUrl:
          "https://yt3.ggpht.com/oIDXQDZsMSTeGShVPE_-CAifw4duLe5z-8_6zhT3x3cenZq0KScM6UH0Y6Gva9k-p648YDrNMA=s88-c-k-c0x00ffffff-no-rj",
      colorCode: 0xffff998d,
      group: StreamGroup.vspo),
  Streamer(
      id: 23,
      yourubeId: "UCX4WL24YEOUYd7qDsFSLDOw",
      name: "夜乃くろむ",
      thumbnailUrl:
          "https://yt3.ggpht.com/s5yBpdTfsald7IesR0XOLBAE49k5P9e5aLqE6AsmPf2pb8GSQ9-srQz-eSiAUWrkfCTTcDZWZA=s88-c-k-c0x00ffffff-no-rj",
      colorCode: 0xff909ec8,
      group: StreamGroup.vspo),
  Streamer(
      id: 24,
      yourubeId: "UC-WX1CXssCtCtc2TNIRnJzg",
      name: "紡木こかげ",
      thumbnailUrl:
          "https://yt3.ggpht.com/uBemMrpiQtcdsbmAkxsCfyqr6lVkxa9FGwrs4URjOZgm97CbPDbilJBLcAy9SQYGfh8-__x7tw0=s88-c-k-c0x00ffffff-no-rj",
      colorCode: 0xff5195e1,
      group: StreamGroup.vspo),
  Streamer(
      id: 25,
      yourubeId: "UCuDY3ibSP2MFRgf7eo3cojg",
      name: "千燈ゆうひ",
      thumbnailUrl:
          "https://yt3.ggpht.com/Q5r7YGQy17IXQTQOCo9fzUb3LBVh4m61y5EPs6lulBRB0kedZEDfcp-_idAbfSiZ1Hbhp5jW=s88-c-k-c0x00ffffff-no-rj",
      colorCode: 0xffed784a,
      group: StreamGroup.vspo),
  Streamer(
      id: 26,
      yourubeId: "UC8vKBjGY2HVfbW9GAmgikWw",
      name: "甘結もか",
      thumbnailUrl:
          "https://yt3.ggpht.com/m7ztm9uUEQTPrWUp8BdL938qGAnsExnz15B5BqaODhBx5ubmlu_hHiHJzXZ5olQSg-FskcGMqzc=s88-c-k-c0x00ffffff-no-rj",
      colorCode: 0xffeca0aa,
      group: StreamGroup.vspo),
  Streamer(
      id: 27,
      yourubeId: "UCL9hJsdk9eQa0IlWbFB2oRg",
      name: "蝶屋はなび",
      thumbnailUrl:
          "https://yt3.ggpht.com/YaWMa3WrQaECXExUNK10s-Nr41cuW0s5T6xxaUVOi051NILISbIOh173YsJ5g5r7moRJ-AOr=s88-c-k-c0x00ffffff-no-rj",
      colorCode: 0xffea5506,
      group: StreamGroup.vspo),

  // Neoporte
  Streamer(
      id: 28,
      yourubeId: "UCuk7vapXKckSw6yCGGDspDg",
      name: "緋月ゆい",
      thumbnailUrl:
          "https://yt3.ggpht.com/dSizVU3YHLj8WF6LoLXcykoXLw4FbBeiphzZGmCwaji9E8GGUQFYK8abqzrz_HXkjR7bwcyLX_4=s88-c-k-c0x00ffffff-no-rj",
      colorCode: 0xfff1201e,
      group: StreamGroup.neoporte),
  Streamer(
      id: 29,
      yourubeId: "UCZmUoMwjyuQ59sk5_7Tx07A",
      name: "夜絆ニウ",
      thumbnailUrl:
          "https://yt3.ggpht.com/U0HZJnk7Y8tjnkf_sB7L2LMEevtM-X54-TleQKKhFJ2c0GcDhnDiFjdd2X6kbmr-ioI4Lit5RQ=s88-c-k-c0x00ffffff-no-rj",
      colorCode: 0xffcc99ff,
      group: StreamGroup.neoporte),
];
