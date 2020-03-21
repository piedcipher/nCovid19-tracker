import 'package:ncovidtracker/utils/enums.dart';

final Map<CountryCode, String> countryCodeMap = {
  CountryCode.AE: 'United Arab Emirates',
  CountryCode.AF: 'Afghanistan',
  CountryCode.AL: 'Albania',
  CountryCode.AM: 'Armenia',
  CountryCode.AO: 'Angola',
  CountryCode.AR: 'Argentina',
  CountryCode.AT: 'Austria',
  CountryCode.AU: 'Australia',
  CountryCode.AZ: 'Azerbaijan',
  CountryCode.BA: 'Bosnia and Herzegovina',
  CountryCode.BD: 'Bangladesh',
  CountryCode.BE: 'Belgium',
  CountryCode.BF: 'Burkina Faso',
  CountryCode.BG: 'Bulgaria',
  CountryCode.BI: 'Burundi',
  CountryCode.BJ: 'Benin',
  CountryCode.BN: 'Brunei Darussalam',
  CountryCode.BO: 'Bolivia',
  CountryCode.BR: 'Brazil',
  CountryCode.BS: 'Bahamas',
  CountryCode.BT: 'Bhutan',
  CountryCode.BW: 'Botswana',
  CountryCode.BY: 'Belarus',
  CountryCode.BZ: 'Belize',
  CountryCode.CA: 'Canada',
  CountryCode.CD: 'Democratic Republic of Congo',
  CountryCode.CF: 'Central African Republic',
  CountryCode.CG: 'Congo',
  CountryCode.CH: 'Switzerland',
  CountryCode.CI: 'Ivory Coast',
  CountryCode.CL: 'Chile',
  CountryCode.CM: 'Cameroon',
  CountryCode.CN: 'China',
  CountryCode.CO: 'Colombia',
  CountryCode.CR: 'Costa Rica',
  CountryCode.CU: 'Cuba',
  CountryCode.CY: 'Cyprus',
  CountryCode.CZ: 'Czech Republic',
  CountryCode.DE: 'Germany',
  CountryCode.DJ: 'Djibouti',
  CountryCode.DK: 'Denmark',
  CountryCode.DO: 'Dominican Republic',
  CountryCode.DP: 'Diamond Princess',
  CountryCode.DZ: 'Algeria',
  CountryCode.EC: 'Ecuador',
  CountryCode.EE: 'Estonia',
  CountryCode.EG: 'Egypt',
  CountryCode.EH: 'Western Sahara',
  CountryCode.ER: 'Eritrea',
  CountryCode.ES: 'Spain',
  CountryCode.ET: 'Ethiopia',
  CountryCode.FI: 'Finland',
  CountryCode.FJ: 'Fiji',
  CountryCode.FK: 'Falkland Islands',
  CountryCode.FR: 'France',
  CountryCode.GA: 'Gabon',
  CountryCode.GB: 'United Kingdom',
  CountryCode.GE: 'Georgia',
  CountryCode.GF: 'French Guiana',
  CountryCode.GH: 'Ghana',
  CountryCode.GL: 'Greenland',
  CountryCode.GM: 'Gambia',
  CountryCode.GN: 'Guinea',
  CountryCode.GQ: 'Equatorial Guinea',
  CountryCode.GR: 'Greece',
  CountryCode.GT: 'Guatemala',
  CountryCode.GW: 'Guinea-Bissau',
  CountryCode.GY: 'Guyana',
  CountryCode.HK: 'Hong Kong',
  CountryCode.HN: 'Honduras',
  CountryCode.HR: 'Croatia',
  CountryCode.HT: 'Haiti',
  CountryCode.HU: 'Hungary',
  CountryCode.ID: 'Indonesia',
  CountryCode.IE: 'Ireland',
  CountryCode.IL: 'Israel',
  CountryCode.IN: 'India',
  CountryCode.IQ: 'Iraq',
  CountryCode.IR: 'Iran',
  CountryCode.IS: 'Iceland',
  CountryCode.IT: 'Italy',
  CountryCode.JM: 'Jamaica',
  CountryCode.JO: 'Jordan',
  CountryCode.JP: 'Japan',
  CountryCode.KE: 'Kenya',
  CountryCode.KG: 'Kyrgyzstan',
  CountryCode.KH: 'Cambodia',
  CountryCode.KP: 'Korea',
  CountryCode.KR: 'South Korea',
  CountryCode.KW: 'Kuwait',
  CountryCode.KZ: 'Kazakhstan',
  CountryCode.LA: 'Lao',
  CountryCode.LB: 'Lebanon',
  CountryCode.LK: 'Sri Lanka',
  CountryCode.LR: 'Liberia',
  CountryCode.LS: 'Lesotho',
  CountryCode.LT: 'Lithuania',
  CountryCode.LU: 'Luxembourg',
  CountryCode.LV: 'Latvia',
  CountryCode.LY: 'Libya',
  CountryCode.MA: 'Morocco',
  CountryCode.MD: 'Moldova',
  CountryCode.ME: 'Montenegro',
  CountryCode.MG: 'Madagascar',
  CountryCode.MK: 'Macedonia',
  CountryCode.ML: 'Mali',
  CountryCode.MM: 'Myanmar',
  CountryCode.MN: 'Mongolia',
  CountryCode.MR: 'Mauritania',
  CountryCode.MW: 'Malawi',
  CountryCode.MX: 'Mexico',
  CountryCode.MY: 'Malaysia',
  CountryCode.MZ: 'Mozambique',
  CountryCode.NA: 'Namibia',
  CountryCode.NC: 'New Caledonia',
  CountryCode.NE: 'Niger',
  CountryCode.NG: 'Nigeria',
  CountryCode.NI: 'Nicaragua',
  CountryCode.NL: 'Netherlands',
  CountryCode.NO: 'Norway',
  CountryCode.NP: 'Nepal',
  CountryCode.NZ: 'New Zealand',
  CountryCode.OM: 'Oman',
  CountryCode.PA: 'Panama',
  CountryCode.PE: 'Peru',
  CountryCode.PG: 'Papua New Guinea',
  CountryCode.PH: 'Philippines',
  CountryCode.PK: 'Pakistan',
  CountryCode.PL: 'Poland',
  CountryCode.PR: 'Puerto Rico',
  CountryCode.PS: 'Palestine',
  CountryCode.PT: 'Portugal',
  CountryCode.PY: 'Paraguay',
  CountryCode.QA: 'Qatar',
  CountryCode.RO: 'Romania',
  CountryCode.RS: 'Serbia',
  CountryCode.RU: 'Russia',
  CountryCode.RW: 'Rwanda',
  CountryCode.SA: 'Saudi Arabia',
  CountryCode.SB: 'Solomon Islands',
  CountryCode.SD: 'Sudan',
  CountryCode.SE: 'Sweden',
  CountryCode.SG: 'Singapore',
  CountryCode.SI: 'Slovenia',
  CountryCode.SJ: 'Svalbard and Jan Mayen',
  CountryCode.SK: 'Slovakia',
  CountryCode.SL: 'Sierra Leone',
  CountryCode.SN: 'Senegal',
  CountryCode.SO: 'Somalia',
  CountryCode.SR: 'Suriname',
  CountryCode.SS: 'South Sudan',
  CountryCode.SV: 'El Salvador',
  CountryCode.SY: 'Syria',
  CountryCode.SZ: 'Swaziland',
  CountryCode.TD: 'Chad',
  CountryCode.TF: 'French Southern Territories',
  CountryCode.TG: 'Togo',
  CountryCode.TH: 'Thailand',
  CountryCode.TJ: 'Tajikistan',
  CountryCode.TL: 'Timor-Leste',
  CountryCode.TM: 'Turkmenistan',
  CountryCode.TN: 'Tunisia',
  CountryCode.TR: 'Turkey',
  CountryCode.TT: 'Trinidad and Tobago',
  CountryCode.TW: 'Taiwan',
  CountryCode.TZ: 'Tanzania',
  CountryCode.UA: 'Ukraine',
  CountryCode.UG: 'Uganda',
  CountryCode.US: 'USA',
  CountryCode.UY: 'Uruguay',
  CountryCode.UZ: 'Uzbekistan',
  CountryCode.VE: 'Venezuela',
  CountryCode.VN: 'Viet Nam',
  CountryCode.VU: 'Vanuatu',
  CountryCode.XK: 'Kosovo',
  CountryCode.YE: 'Yemen',
  CountryCode.ZA: 'South Africa',
  CountryCode.ZM: 'Zambia',
  CountryCode.ZW: 'Zimbabwe',
};

final Map<CountryTimelineSortOption, String> countryTimelineSortOptionMap = {
  CountryTimelineSortOption.DateAscending: 'Date Ascending',
  CountryTimelineSortOption.DateDescending: 'Date Descedning',
  CountryTimelineSortOption.TotalCases: 'Total Cases',
  CountryTimelineSortOption.TotalRecoveries: 'Total Recoveries',
  CountryTimelineSortOption.TotalDeaths: 'Total Deaths',
  CountryTimelineSortOption.NewDailyCases: 'New Daily Cases',
  CountryTimelineSortOption.NewDailyDeaths: 'New Daily Deaths',
};
