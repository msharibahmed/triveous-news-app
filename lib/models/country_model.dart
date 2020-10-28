import '../utils/imports.dart';

class CountryModel {
  final String countryName;
  final String countryUrl;
  final String countryCode;
  CountryModel({
    @required this.countryName,
    @required this.countryUrl,
    @required this.countryCode,
  });
  static List<CountryModel> countries = [
    CountryModel(
        countryName: 'Argentina',
        countryUrl:
            "https://img.icons8.com/emoji/48/000000/argentina-emoji.png",
        countryCode: 'ar'),
    CountryModel(
        countryName: 'Australia',
        countryUrl:
            "https://img.icons8.com/emoji/48/000000/australia-emoji.png",
        countryCode: 'au'),
    CountryModel(
        countryName: 'Austria',
        countryUrl: "https://img.icons8.com/emoji/48/000000/austria-emoji.png",
        countryCode: 'at'),
    CountryModel(
        countryName: 'Belgium',
        countryUrl: "https://img.icons8.com/emoji/48/000000/belgium-emoji.png",
        countryCode: 'be'),
    CountryModel(
        countryName: 'Brazil',
        countryUrl: "https://img.icons8.com/emoji/48/000000/brazil-emoji.png",
        countryCode: 'br'),
    CountryModel(
        countryName: 'Bulgaria',
        countryUrl: "https://img.icons8.com/emoji/48/000000/bulgaria-emoji.png",
        countryCode: 'bg'),
    CountryModel(
        countryName: 'Canada',
        countryUrl: "https://img.icons8.com/emoji/48/000000/canada-emoji.png",
        countryCode: 'ca'),
    CountryModel(
        countryName: 'China',
        countryUrl: "https://img.icons8.com/emoji/48/000000/china-emoji.png",
        countryCode: 'cn'),
    CountryModel(
        countryName: 'Colombia',
        countryUrl: "https://img.icons8.com/emoji/48/000000/colombia-emoji.png",
        countryCode: 'co'),
    CountryModel(
        countryName: 'Cuba',
        countryUrl: "https://img.icons8.com/emoji/48/000000/cuba-emoji.png",
        countryCode: 'cu'),
    CountryModel(
        countryName: 'Czech Republic',
        countryUrl: "https://img.icons8.com/emoji/48/000000/czechia-emoji.png",
        countryCode: 'cz'),
    CountryModel(
        countryName: 'Egypt',
        countryUrl: "https://img.icons8.com/emoji/48/000000/egypt-emoji.png",
        countryCode: 'eg'),
    CountryModel(
        countryName: 'France',
        countryUrl: "https://img.icons8.com/emoji/48/000000/france-emoji.png",
        countryCode: 'fr'),
    CountryModel(
        countryName: 'Germany',
        countryUrl: "https://img.icons8.com/emoji/48/000000/germany-emoji.png",
        countryCode: 'de'),
    CountryModel(
        countryName: 'Greece',
        countryUrl: "https://img.icons8.com/emoji/48/000000/greece-emoji.png",
        countryCode: 'gr'),
    CountryModel(
        countryName: 'Hong Kong',
        countryUrl:
            "https://img.icons8.com/emoji/48/000000/hong-kong-sar-china-emoji.png",
        countryCode: 'hk'),
    CountryModel(
        countryName: 'Hungary',
        countryUrl: "https://img.icons8.com/emoji/48/000000/hungary-emoji.png",
        countryCode: 'hu'),
    CountryModel(
        countryName: 'India',
        countryUrl: "https://img.icons8.com/emoji/48/000000/india-emoji.png",
        countryCode: 'in'),
    CountryModel(
        countryName: 'Indonesia',
        countryUrl:
            "https://img.icons8.com/emoji/48/000000/indonesia-emoji.png",
        countryCode: 'id'),
    CountryModel(
        countryName: 'Ireland',
        countryUrl: "https://img.icons8.com/emoji/48/000000/ireland-emoji.png",
        countryCode: 'ie'),
    CountryModel(
        countryName: 'Israel',
        countryUrl: "https://img.icons8.com/emoji/48/000000/israel-emoji.png",
        countryCode: 'il'),
    CountryModel(
        countryName: 'Italy',
        countryUrl: "https://img.icons8.com/emoji/48/000000/italy-emoji.png",
        countryCode: 'it'),
    CountryModel(
        countryName: 'Japan',
        countryUrl: "https://img.icons8.com/emoji/48/000000/japan-emoji.png",
        countryCode: 'jp'),
    CountryModel(
        countryName: 'Latvia',
        countryUrl: "https://img.icons8.com/emoji/48/000000/latvia-emoji.png",
        countryCode: 'lv'),
    CountryModel(
        countryName: 'Lithuania',
        countryUrl:
            "https://img.icons8.com/emoji/48/000000/lithuania-emoji.png",
        countryCode: 'lt'),
    CountryModel(
        countryName: 'Malaysia',
        countryUrl: "https://img.icons8.com/emoji/48/000000/malaysia-emoji.png",
        countryCode: 'my'),
    CountryModel(
        countryName: 'Mexico',
        countryUrl: "https://img.icons8.com/emoji/48/000000/mexico-emoji.png",
        countryCode: 'mx'),
    CountryModel(
        countryName: 'Morocco',
        countryUrl: "https://img.icons8.com/emoji/48/000000/morocco-emoji.png",
        countryCode: 'ma'),
    CountryModel(
        countryName: 'Netherlands',
        countryUrl:
            "https://img.icons8.com/emoji/48/000000/netherlands-emoji.png",
        countryCode: 'nl'),
    CountryModel(
        countryName: 'New Zealand',
        countryUrl:
            "https://img.icons8.com/emoji/48/000000/new-zealand-emoji.png",
        countryCode: 'nz'),
    CountryModel(
        countryName: 'Nigeria',
        countryUrl: "https://img.icons8.com/emoji/48/000000/nigeria-emoji.png",
        countryCode: 'ng'),
    CountryModel(
        countryName: 'Norway',
        countryUrl: "https://img.icons8.com/emoji/48/000000/norway-emoji.png",
        countryCode: 'no'),
    CountryModel(
        countryName: 'Philippines',
        countryUrl:
            "https://img.icons8.com/emoji/48/000000/philippines-emoji.png",
        countryCode: 'ph'),
    CountryModel(
        countryName: 'Poland',
        countryUrl: "https://img.icons8.com/emoji/48/000000/poland-emoji.png",
        countryCode: 'pl'),
    CountryModel(
        countryName: 'Portugal',
        countryUrl: "https://img.icons8.com/emoji/48/000000/portugal-emoji.png",
        countryCode: 'pt'),
    CountryModel(
        countryName: 'Romania',
        countryUrl: "https://img.icons8.com/emoji/48/000000/romania-emoji.png",
        countryCode: 'ro'),
    CountryModel(
        countryName: 'Russia',
        countryUrl: "https://img.icons8.com/emoji/48/000000/russia-emoji.png",
        countryCode: 'ru'),
    CountryModel(
        countryName: 'Saudi Arabia',
        countryUrl:
            "https://img.icons8.com/emoji/48/000000/saudi-arabia-emoji.png",
        countryCode: 'sa'),
    CountryModel(
        countryName: 'Serbia',
        countryUrl: "https://img.icons8.com/emoji/48/000000/serbia-emoji.png",
        countryCode: 'rs'),
    CountryModel(
        countryName: 'Singapore',
        countryUrl:
            "https://img.icons8.com/emoji/48/000000/singapore-emoji.png",
        countryCode: 'sg'),
    CountryModel(
        countryName: 'Slovakia',
        countryUrl: "https://img.icons8.com/emoji/48/000000/slovakia-emoji.png",
        countryCode: 'sk'),
    CountryModel(
        countryName: 'Slovenia',
        countryUrl: "https://img.icons8.com/emoji/48/000000/slovenia-emoji.png",
        countryCode: 'si'),
    CountryModel(
        countryName: 'South Africa',
        countryUrl:
            "https://img.icons8.com/emoji/48/000000/south-africa-emoji.png",
        countryCode: 'za'),
    CountryModel(
        countryName: 'South Korea',
        countryUrl:
            "https://img.icons8.com/emoji/48/000000/south-korea-emoji.png",
        countryCode: 'kr'),
    CountryModel(
        countryName: 'Sweden',
        countryUrl: "https://img.icons8.com/emoji/48/000000/sweden-emoji.png",
        countryCode: 'se'),
    CountryModel(
        countryName: 'Switzerland',
        countryUrl:
            "https://img.icons8.com/emoji/48/000000/switzerland-emoji.png",
        countryCode: 'ch'),
    CountryModel(
        countryName: 'Taiwan',
        countryUrl: "https://img.icons8.com/emoji/48/000000/taiwan-emoji.png",
        countryCode: 'tw'),
    CountryModel(
        countryName: 'Thailand',
        countryUrl: "https://img.icons8.com/emoji/48/000000/thailand-emoji.png",
        countryCode: 'th'),
    CountryModel(
        countryName: 'Turkey',
        countryUrl:
            "https://img.icons8.com/emoji/48/000000/turkey-flag-emoji.png",
        countryCode: 'tr'),
    CountryModel(
        countryName: 'UAE',
        countryUrl:
            "https://img.icons8.com/emoji/48/000000/united-arab-emirates-emoji.png",
        countryCode: 'ae'),
    CountryModel(
        countryName: 'Ukraine',
        countryUrl: "https://img.icons8.com/emoji/48/000000/ukraine-emoji.png",
        countryCode: 'ua'),
    CountryModel(
        countryName: 'United Kingdom',
        countryUrl:
            "https://img.icons8.com/emoji/48/000000/united-kingdom-emoji.png",
        countryCode: 'gb'),
    CountryModel(
        countryName: 'United States',
        countryUrl:
            "https://img.icons8.com/emoji/48/000000/united-states-emoji.png",
        countryCode: 'us'),
    CountryModel(
        countryName: 'Venuzuela',
        countryUrl:
            "https://img.icons8.com/emoji/48/000000/venezuela-emoji.png",
        countryCode: 've'),
  ];
}
