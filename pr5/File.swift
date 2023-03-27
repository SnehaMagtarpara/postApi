//
//  File.swift
//  pr5
//
//  Created by R93 on 27/03/23.
//

import Foundation


struct WelcomeElement: Codable {
    let name: Name
    let tld: [String]?
    let cca2: String
    let ccn3: String?
    let cca3: String
    let cioc: String?
    let independent: Bool?
    let status: Status
    let unMember: Bool
    let currencies: Currencies?
    let idd: Idd
    let capital: [String]?
    let altSpellings: [String]
    let region: Region
    let subregion: String?
    let languages: [String: String]?
    let translations: [String: Translation]
    let latlng: [Double]
    let landlocked: Bool
    let borders: [String]?
    let area: Double
    let demonyms: Demonyms?
    let flag: String
    let maps: Maps
    let population: Int
    let gini: [String: Double]?
    let fifa: String?
    let car: Car
    let timezones: [String]
    let continents: [Continent]
    let flags: Flags
    let coatOfArms: CoatOfArms
    let startOfWeek: StartOfWeek
    let capitalInfo: CapitalInfo
    let postalCode: PostalCode?
}

struct CapitalInfo: Codable {
    let latlng: [Double]?
}

struct Car: Codable {
    let signs: [String]?
    let side: Side
}

enum Side: String, Codable {
    case sideLeft = "left"
    case sideRight = "right"
}

struct CoatOfArms: Codable {
    let png: String?
    let svg: String?
}

enum Continent: String, Codable {
    case africa = "Africa"
    case antarctica = "Antarctica"
    case asia = "Asia"
    case europe = "Europe"
    case northAmerica = "North America"
    case oceania = "Oceania"
    case southAmerica = "South America"
}

struct Currencies: Codable {
    let gtq, sgd: Aed?
    let bam: BAM?
    let mvr, eur, aud, jod: Aed?
    let bdt, usd, dzd, btn: Aed?
    let inr, stn, xaf, xpf: Aed?
    let nok, tvd, khr, mur: Aed?
    let cdf, pab, nio, sll: Aed?
    let bbd, ils, mad, mru: Aed?
    let xcd, rwf, currenciesTRY, mzn: Aed?
    let ngn, rub, cuc, cup: Aed?
    let gbp, jep, crc, ckd: Aed?
    let nzd, pgk, hnl, mop: Aed?
    let ttd, gmd, mmk, egp: Aed?
    let lbp, kes, php, kzt: Aed?
    let ars, tjs, azn, ron: Aed?
    let clp, cve, bgn, uyu: Aed?
    let mkd, afn, bwp, cad: Aed?
    let qar, yer, sos, sek: Aed?
    let chf, shp, mga, uah: Aed?
    let irr, pln, vuv, pen: Aed?
    let szl, zar, djf, htg: Aed?
    let syp, gip, mxn, isk: Aed?
    let fjd, kpw, sbd, gnf: Aed?
    let bhd, gel, rsd, xof: Aed?
    let mnt, dkk, etb, lyd: Aed?
    let nad, mdl, bob, dop: Aed?
    let ang, idr, byn, lrd: Aed?
    let amd, all, ssp, ggp: Aed?
    let aed, czk, pkr, jmd: Aed?
    let kmf, fkp, tmt, bnd: Aed?
    let ghs, kwd, ern, zwl: Aed?
    let tzs, bzd, sar, cop: Aed?
    let myr, bmd, wst, ugx: Aed?
    let npr, pyg, fok, zmw: Aed?
    let imp, kgs, hkd, vnd: Aed?
    let jpy, brl, gyd, cny: Aed?
    let awg, lak, ves, huf: Aed?
    let top, iqd, thb, tnd: Aed?
    let bif, kid: Aed?
    let sdg: BAM?
    let uzs, lkr, srd, aoa: Aed?
    let kyd, lsl, mwk, bsd: Aed?
    let scr, twd, krw, omr: Aed?

    enum CodingKeys: String, CodingKey {
        case gtq = "GTQ"
        case sgd = "SGD"
        case bam = "BAM"
        case mvr = "MVR"
        case eur = "EUR"
        case aud = "AUD"
        case jod = "JOD"
        case bdt = "BDT"
        case usd = "USD"
        case dzd = "DZD"
        case btn = "BTN"
        case inr = "INR"
        case stn = "STN"
        case xaf = "XAF"
        case xpf = "XPF"
        case nok = "NOK"
        case tvd = "TVD"
        case khr = "KHR"
        case mur = "MUR"
        case cdf = "CDF"
        case pab = "PAB"
        case nio = "NIO"
        case sll = "SLL"
        case bbd = "BBD"
        case ils = "ILS"
        case mad = "MAD"
        case mru = "MRU"
        case xcd = "XCD"
        case rwf = "RWF"
        case currenciesTRY = "TRY"
        case mzn = "MZN"
        case ngn = "NGN"
        case rub = "RUB"
        case cuc = "CUC"
        case cup = "CUP"
        case gbp = "GBP"
        case jep = "JEP"
        case crc = "CRC"
        case ckd = "CKD"
        case nzd = "NZD"
        case pgk = "PGK"
        case hnl = "HNL"
        case mop = "MOP"
        case ttd = "TTD"
        case gmd = "GMD"
        case mmk = "MMK"
        case egp = "EGP"
        case lbp = "LBP"
        case kes = "KES"
        case php = "PHP"
        case kzt = "KZT"
        case ars = "ARS"
        case tjs = "TJS"
        case azn = "AZN"
        case ron = "RON"
        case clp = "CLP"
        case cve = "CVE"
        case bgn = "BGN"
        case uyu = "UYU"
        case mkd = "MKD"
        case afn = "AFN"
        case bwp = "BWP"
        case cad = "CAD"
        case qar = "QAR"
        case yer = "YER"
        case sos = "SOS"
        case sek = "SEK"
        case chf = "CHF"
        case shp = "SHP"
        case mga = "MGA"
        case uah = "UAH"
        case irr = "IRR"
        case pln = "PLN"
        case vuv = "VUV"
        case pen = "PEN"
        case szl = "SZL"
        case zar = "ZAR"
        case djf = "DJF"
        case htg = "HTG"
        case syp = "SYP"
        case gip = "GIP"
        case mxn = "MXN"
        case isk = "ISK"
        case fjd = "FJD"
        case kpw = "KPW"
        case sbd = "SBD"
        case gnf = "GNF"
        case bhd = "BHD"
        case gel = "GEL"
        case rsd = "RSD"
        case xof = "XOF"
        case mnt = "MNT"
        case dkk = "DKK"
        case etb = "ETB"
        case lyd = "LYD"
        case nad = "NAD"
        case mdl = "MDL"
        case bob = "BOB"
        case dop = "DOP"
        case ang = "ANG"
        case idr = "IDR"
        case byn = "BYN"
        case lrd = "LRD"
        case amd = "AMD"
        case all = "ALL"
        case ssp = "SSP"
        case ggp = "GGP"
        case aed = "AED"
        case czk = "CZK"
        case pkr = "PKR"
        case jmd = "JMD"
        case kmf = "KMF"
        case fkp = "FKP"
        case tmt = "TMT"
        case bnd = "BND"
        case ghs = "GHS"
        case kwd = "KWD"
        case ern = "ERN"
        case zwl = "ZWL"
        case tzs = "TZS"
        case bzd = "BZD"
        case sar = "SAR"
        case cop = "COP"
        case myr = "MYR"
        case bmd = "BMD"
        case wst = "WST"
        case ugx = "UGX"
        case npr = "NPR"
        case pyg = "PYG"
        case fok = "FOK"
        case zmw = "ZMW"
        case imp = "IMP"
        case kgs = "KGS"
        case hkd = "HKD"
        case vnd = "VND"
        case jpy = "JPY"
        case brl = "BRL"
        case gyd = "GYD"
        case cny = "CNY"
        case awg = "AWG"
        case lak = "LAK"
        case ves = "VES"
        case huf = "HUF"
        case top = "TOP"
        case iqd = "IQD"
        case thb = "THB"
        case tnd = "TND"
        case bif = "BIF"
        case kid = "KID"
        case sdg = "SDG"
        case uzs = "UZS"
        case lkr = "LKR"
        case srd = "SRD"
        case aoa = "AOA"
        case kyd = "KYD"
        case lsl = "LSL"
        case mwk = "MWK"
        case bsd = "BSD"
        case scr = "SCR"
        case twd = "TWD"
        case krw = "KRW"
        case omr = "OMR"
    }
}

struct Aed: Codable {
    let name, symbol: String
}

struct BAM: Codable {
    let name: String
}

struct Demonyms: Codable {
    let eng: Eng
    let fra: Eng?
}

struct Eng: Codable {
    let f, m: String
}

struct Flags: Codable {
    let png: String
    let svg: String
    let alt: String?
}
struct Idd: Codable {
    let root: String?
    let suffixes: [String]?
}

struct Maps: Codable {
    let googleMaps, openStreetMaps: String
}

struct Name: Codable {
    let common, official: String
    let nativeName: [String: Translation]?
}

struct Translation: Codable {
    let official, common: String
}

struct PostalCode: Codable {
    let format: String
    let regex: String?
}

enum Region: String, Codable {
    case africa = "Africa"
    case americas = "Americas"
    case antarctic = "Antarctic"
    case asia = "Asia"
    case europe = "Europe"
    case oceania = "Oceania"
}

enum StartOfWeek: String, Codable {
    case monday = "monday"
    case saturday = "saturday"
    case sunday = "sunday"
}

enum Status: String, Codable {
    case officiallyAssigned = "officially-assigned"
    case userAssigned = "user-assigned"
}

typealias Welcome = [WelcomeElement]
