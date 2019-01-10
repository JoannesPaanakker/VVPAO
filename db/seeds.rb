p "seeds started"

Link.destroy_all
Category.destroy_all
Bestuur.destroy_all
Listitem.destroy_all
Text.destroy_all
Newsitem.destroy_all
Image.destroy_all
Usertraining.destroy_all
Training.destroy_all
User.destroy_all
Expertise.destroy_all
Targetaudience.destroy_all

targetaudiences = Targetaudience.create([
  {
    name: 'Niet specifiek'
  },
  {
    name: 'kinderen & jongeren'
  },
  {
    name: 'volwassenen'
  },
  {
    name: 'ouderen'
  }
])

expertises = Expertise.create([
  {
    name: '0000000000'
  },
  {
    name: 'ADHD'
  },
  {
    name: 'Angststoornissen'
  },
  {
    name: 'Autisme Spectrum Stoornissen (ASS)'
  },
  {
    name: 'Bipolaire stoornissen'
  },
  {
    name: 'Delier'
  },
  {
    name: 'Dementie'
  },
  {
    name: 'Diagnostiek'
  },
  {
    name: 'Eetstoornissen'
  },
  {
    name: 'Ernstig psychiatrische aandoeningen (EPA)'
  },
  {
    name: 'Farmacotherapie'
  },
  {
    name: 'Flexible Assertive Community Treatment (FACT)'
  },
  {
    name: 'Forensische psychiatrie'
  },
  {
    name: 'Gedragsstoornissen'
  },
  {
    name: 'Kinder- en jeugdpsychiatrie'
  },
  {
    name: 'Neuropsychiatrie'
  },
  {
    name: 'Niet aangeboren hersenletsel (NAH)'
  },
  {
    name: 'Obsessieve Compulsieve Stoornissen (OCS)'
  },
  {
    name: 'Ouderenpsychiatrie'
  },
  {
    name: 'Persoonlijkheidsstoornissen'
  },
  {
    name: 'Psycho educatie'
  },
  {
    name: 'Psychotherapie'
  },
  {
    name: 'Schizofrenie en andere psychotische stoornissen'
  },
  {
    name: 'Sociale psychiatrie'
  },
  {
    name: 'Somatiek en psychiatrie'
  },
  {
    name: 'Somatoforme stoornissen'
  },
  {
    name: 'Spoedeisende psychiatrie'
  },
  {
    name: 'Stemmingsstoornissen'
  },
  {
    name: 'Transculturele psychiatrie'
  },
  {
    name: 'Trauma gerelateerde aandoeningen'
  },
  {
    name: 'Verslavingspsychiatrie'
  },
  {
    name: 'Verstandelijke beperking'
  },
  {
    name: 'Zwangerschap en psychiatrie'
  }
])

users = User.create([
  {
    email: 'voorzitter@vvpao.amsterdam',
    first_name: 'Celestine',
    tussenvoegsel: '',
    last_name: 'Roose',
    password: '123456',
    initials: 'C',
    street: '',
    streetnumber: '',
    postalcode: '',
    city: '',
    phonenumber: '',
    practice_name: '',
    practice_street: '\'s Gravenlandseveer 9 ',
    practice_streetnumber: '',
    practice_postalcode: '',
    practice_city: 'Amsterdam',
    practice_email: '',
    practice_phonenumber: '',
    website: '',
    admin: true,
    member: true,
    profile_image_filename: 'https://res.cloudinary.com/hrscywv4p/image/upload/c_limit,fl_lossy,h_1440,w_720,f_auto,q_auto/v1/181423/2cc6be79-0736-4751-a988-2048cb3b3bd4_zpscqn.png',
    newregistrations: true,
    waitingperiod: '',
    expertise_id: expertises[5].id,
    targetaudience_id: targetaudiences[2].id,
    big: '',
    contract: true,
    buddy: false,
    training_suggestion: "",
    personal_data_public: false,
    practice_data_public: true,
  },
  {
    email: 'bestuurslidjokhoe@vvpao.amsterdam',
    first_name: 'Roshad',
    tussenvoegsel: '',
    last_name: 'Jokhoe',
    password: '123456',
    initials: '',
    street: '',
    streetnumber: '',
    postalcode: '',
    city: '',
    phonenumber: '',
    practice_name: '',
    practice_street: 'Klaas Engelbrechtsweg 1',
    practice_streetnumber: '',
    practice_postalcode: '',
    practice_city: 'SCHIPLUIDEN',
    practice_email: '',
    practice_phonenumber: '',
    website: '',
    admin: true,
    member: true,
    profile_image_filename: 'https://res.cloudinary.com/hrscywv4p/image/upload/c_limit,fl_lossy,h_1440,w_720,f_auto,q_auto/v1/181423/a9dc2913-4f9f-4f8e-a043-172cbe300d63_wnhtct.png',
    newregistrations: true,
    waitingperiod: '',
    expertise_id: expertises[5].id,
    targetaudience_id: targetaudiences[1].id,
    big: '',
    contract: true,
    buddy: false,
    training_suggestion: "",
    personal_data_public: false,
    practice_data_public: true,
    expertises: ["ADHD", "Delier"]
  },
  {
    email: 'penningmeester@vvpao.amsterdam',
    first_name: 'Kees',
    tussenvoegsel: '',
    last_name: 'de Vries',
    password: '123456',
    initials: '',
    street: '',
    streetnumber: '',
    postalcode: '',
    city: '',
    phonenumber: '',
    practice_name: '',
    practice_street: 'Touwslagerstraat 53',
    practice_streetnumber: '',
    practice_postalcode: '',
    practice_city: 'Amsterdam',
    practice_email: '',
    practice_phonenumber: '',
    website: '',
    admin: true,
    member: true,
    profile_image_filename: 'https://res.cloudinary.com/hrscywv4p/image/upload/c_limit,fl_lossy,h_1440,w_720,f_auto,q_auto/v1/181423/c6c029b8-9692-4f8e-84ec-9cf2947a2e0e_jayxbw.png',
    newregistrations: true,
    waitingperiod: '',
    expertise_id: expertises[5].id,
    targetaudience_id: targetaudiences[3].id,
    big: '',
    contract: true,
    buddy: false,
    training_suggestion: "",
    personal_data_public: false,
    practice_data_public: true,
    expertises: ["Delier", "Verslavingspsychiatrie"]
  },
  {
    email: 'admin@vvpao.ams',
    first_name: 'Jan',
    tussenvoegsel: '',
    last_name: 'Admin',
    password: '123456',
    initials: 'JA',
    street: 'Amstelkade',
    streetnumber: '169',
    postalcode: '1078AZ',
    city: 'Amsterdam',
    phonenumber: '123456798',
    practice_name: '',
    practice_street: 'F. Timmermanslaan 7',
    practice_streetnumber: '',
    practice_postalcode: '',
    practice_city: 'Uithoorn',
    practice_email: '',
    practice_phonenumber: '',
    website: '',
    admin: true,
    member: true,
    newregistrations: true,
    waitingperiod: '',
    expertise_id: expertises[5].id,
    targetaudience_id: targetaudiences[2].id,
    big: '',
    contract: true,
    buddy: false,
    training_suggestion: "",
    personal_data_public: false,
    practice_data_public: true,
    expertises: ["Delier", "Verslavingspsychiatrie"]
  },
  {
    email: 'user@vvpao.ams',
    first_name: 'Anja',
    tussenvoegsel: '',
    last_name: 'User',
    password: '123456',
    initials: 'AU',
    street: 'Rijnstraat',
    streetnumber: '90',
    postalcode: '1234AZ',
    city: 'Den Haag',
    phonenumber: '987654321',
    practice_name: '',
    practice_street: 'Lindepark 2 -G',
    practice_streetnumber: '',
    practice_postalcode: '',
    practice_city: 'Amstelveen',
    practice_email: '',
    practice_phonenumber: '',
    website: '',
    admin: false,
    member: true,
    newregistrations: false,
    waitingperiod: '',
    expertise_id: expertises[10].id,
    targetaudience_id: targetaudiences[1].id,
    big: '',
    contract: true,
    buddy: false,
    training_suggestion: "",
    personal_data_public: false,
    practice_data_public: true,
    expertises: ["Persoonlijkheidsstoornissen"]
  },
  {
    email: 'Piet@elders.eld',
    title: 'heer',
    fax: '987',
    first_name: 'Piet',
    tussenvoegsel: '',
    last_name: 'Elders',
    password: '123456',
    initials: 'PE',
    street: 'Laan van Tets',
    streetnumber: '1234',
    postalcode: '9874gf',
    city: 'Lutjenbroek',
    phonenumber: '654987321',
    practice_name: '',
    practice_street: 'kalverstraat 1',
    practice_streetnumber: '',
    practice_postalcode: '',
    practice_city: 'Amsterdam',
    practice_email: '',
    practice_phonenumber: '',
    website: '',
    admin: false,
    member: false,
    newregistrations: false,
    waitingperiod: '',
    expertise_id: expertises[0].id,
    targetaudience_id: targetaudiences[0].id,
    big: '',
    contract: true,
    buddy: false,
    training_suggestion: "",
    personal_data_public: false,
    practice_data_public: true,
  },
  {email:"d.balraadjsing@hotmail.com", title:"de heer",initials:"D.K.", last_name:"Balraadjsing", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"Wilhelmus Leemansstraat 19",practice_postalcode:"1065 CW", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"flexpsychiatercoach@gmail.com", title:"de heer",initials:"J.A.W.", last_name:"Benckhuijsen", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"Van der Palmkade 29",practice_postalcode:"1051 RE", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"info@equilibrium-p.nl", title:"de heer",initials:"W.F.", last_name:"van der Bend", password:"Welkom01",phonenumber:"06 81112517", practice_name:"Equilibrium", practice_street:"",practice_postalcode:"", practice_city:"",practice_phonenumber:"",fax:"",website:"www.equilibrium-p.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"info@psychiateramsteldijk.nl", title:"de heer",initials:"J.H.", last_name:"Bent", password:"Welkom01",phonenumber:"", practice_name:"J.H. Bent, psychiater", practice_street:"Amsteldijk 154",practice_postalcode:"1079 LG", practice_city:"AMSTERDAM",practice_phonenumber:"020 6760190",fax:"",website:"www.psychiateramsteldijk.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"deboer.gerben@yahoo.com", title:"de heer",initials:"G.A.", last_name:"de Boer", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"Alexander Boersstraat 28hs",practice_postalcode:"1087 CM", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"boerma@mbpsychiatrie.nl", title:"mevrouw",initials:"M.A.M.", last_name:"Boerma", password:"Welkom01",phonenumber:"06 44095443", practice_name:"MB Psychiatrie & Counseling", practice_street:"Alpen Rondweg 102 -O",practice_postalcode:"1186 EA", practice_city:"AMSTELVEEN",practice_phonenumber:"",fax:"020-7371414",website:"www.mbpsychiatrie.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"info@bouwman-psychiatrie.nl", title:"de heer",initials:"R.", last_name:"Bouwman", password:"Welkom01",phonenumber:"06 50479964", practice_name:"", practice_street:"Oldengaarde 22",practice_postalcode:"8226 RZ", practice_city:"LELYSTAD",practice_phonenumber:"",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"cvitan@psydok.nl", title:"mevrouw",initials:"M.", last_name:"Cvitan", password:"Welkom01",phonenumber:"06 29249893", practice_name:"Praktijk Cvitan", practice_street:"Westerdok 720",practice_postalcode:"1013 BV", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"www.psydok.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"margitdeben@planet.nl", title:"mevrouw",initials:"M.M.", last_name:"Deben-Mager", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"Plantage Middenlaan 18",practice_postalcode:"1018 DD", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"www.debenmager.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"dekker-elly@hetnet.nl", title:"mevrouw",initials:"H.A.", last_name:"Dekker", password:"Welkom01",phonenumber:"", practice_name:"Praktijk Dekker", practice_street:"Parkweg 108 A",practice_postalcode:"2271 AM", practice_city:"VOORBURG",practice_phonenumber:"070 3863268",fax:"",website:"www.kinderpsychiatrievoorburg.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"lcamvdongen@gmail.com", title:"mevrouw",initials:"L.C.A.M.", last_name:"van Dongen", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"Nieuwe Keizersgracht 85 -II",practice_postalcode:"1077 NZ", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"vdoornik@xs4all.nl", title:"mevrouw",initials:"H.W.J.M.", last_name:"van Doornik-van Gemert", password:"Welkom01",phonenumber:"06 52421340", practice_name:"", practice_street:"Borneolaan 222",practice_postalcode:"1019 KJ", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"info@praktijkeerden.nl", title:"mevrouw",initials:"E.A.M.G.", last_name:"Eerden", password:"Welkom01",phonenumber:"06 15163164", practice_name:"Praktijk Eerden", practice_street:"Laan van Wateringse Veld 224 F",practice_postalcode:"2548 CG", practice_city:"DEN HAAG",practice_phonenumber:"",fax:"",website:"www.praktijkeerden.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"erkut@psydok.nl", title:"de heer",initials:"Z.A.", last_name:"Erkut", password:"Welkom01",phonenumber:"", practice_name:"PsyDok, psychiatrische praktijk", practice_street:"Westerdok 720",practice_postalcode:"1013 BV", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"020 7730391",website:"www.psydok.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"richterslaan56@hotmail.com", title:"mevrouw",initials:"J.L.", last_name:"van der Geld", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"Amsteldijk 154",practice_postalcode:"1079 LG", practice_city:"AMSTERDAM",practice_phonenumber:"030 6052867",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"r0graaff@xs4all.nl", title:"de heer",initials:"R.A.", last_name:"Graaff", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"Nieuwedammerdijk 173",practice_postalcode:"1025 LH", practice_city:"AMSTERDAM",practice_phonenumber:"020 6364668",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"ps_correspondentie@me.com", title:"mevrouw",initials:"J.M.T.", last_name:"Gravendeel", password:"Welkom01",phonenumber:"", practice_name:"Psychiatriepraktijk voor Senioren", practice_street:"Schaapweg 10 C",practice_postalcode:"2285 SP", practice_city:"RIJSWIJK",practice_phonenumber:"",fax:"",website:"www.psychiatriepraktijkvoorsenioren.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"c.groenendijk@mentalmente.nl", title:"mevrouw",initials:"J.", last_name:"Groenendijk", password:"Welkom01",phonenumber:"06 49752960", practice_name:"Mentalmente, Praktijk voor psychoanalyse &  psychoanalytische psychotherapie", practice_street:"Ruysdaelstraat 49 A1E",practice_postalcode:"1071 XA", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"www.mentalmente.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"m.hakvoort@xs4all.nl", title:"de heer",initials:"M.", last_name:"Hakvoort", password:"Welkom01",phonenumber:"620614680", practice_name:"Stichting Huis aan het water", practice_street:"Hoogedijk 7",practice_postalcode:"1145 PM", practice_city:"KATSWOUDE",practice_phonenumber:"",fax:"",website:"www.stichtinghuisaanhetwater.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"phvnham@xs4all.nl", title:"de heer",initials:"P.H.", last_name:"van Ham", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"Raadhuisstraat 6",practice_postalcode:"1474 HE", practice_city:"OOSTHUIZEN",practice_phonenumber:"0299 404611",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"merleheinemeijer@xs4all.nl", title:"mevrouw",initials:"A.M.", last_name:"Heinemeijer", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"Keizersgracht 761",practice_postalcode:"1017 EA", practice_city:"AMSTERDAM",practice_phonenumber:"020 4201350",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"nfj.hettinga@wxs.nl", title:"de heer",initials:"N.F.J.", last_name:"Hettinga", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"Keizersgracht 810 III",practice_postalcode:"1017 ED", practice_city:"AMSTERDAM",practice_phonenumber:"020 6240255",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"HoofM@imindu.nl", title:"mevrouw",initials:"M.J.", last_name:"van Hoof", password:"Welkom01",phonenumber:"", practice_name:"iMindU", practice_street:"Dorpsstraat 73",practice_postalcode:"2361 AV", practice_city:"WARMOND",practice_phonenumber:"088 2919677",fax:"",website:"www.imindu.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"info@hoevebuitenlust.nl", title:"mevrouw",initials:"A.E.", last_name:"van 't Hoog", password:"Welkom01",phonenumber:"", practice_name:"Hoeve Buitenlust", practice_street:"Klaas Engelbrechtsweg 1",practice_postalcode:"2636 DM", practice_city:"SCHIPLUIDEN",practice_phonenumber:"",fax:"",website:"www.hoevebuitenlust.nl/zorg", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"rjokhoe@hotmail.com", title:"de heer",initials:"R.A.", last_name:"Jokhoe", password:"Welkom01",phonenumber:"06 41870402", practice_name:"", practice_street:"Grubbehoeve 49",practice_postalcode:"1103 GG", practice_city:"AMSTERDAM",practice_phonenumber:"020 4160203",fax:"",website:"www.bbaz.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"hkalsepsychiater@gmail.com", title:"de heer",initials:"H.", last_name:"Kalse", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"Clark Gablestraat 21",practice_postalcode:"1325 HG", practice_city:"ALMERE",practice_phonenumber:"036 - 5376746",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"psychaandeamstel@planet.nl", title:"de heer",initials:"R.", last_name:"Kamstra", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"s Gravenlandseveer 9",practice_postalcode:"1011 KN", practice_city:"AMSTERDAM",practice_phonenumber:"020 4283147",fax:"020 4283145",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"info@barendvandekar.nl", title:"de heer",initials:"B.W.", last_name:"van de Kar", password:"Welkom01",phonenumber:"06 23954109", practice_name:"Het Ruysdaelcollectief", practice_street:"Ruysdaelstraat 49 A1 unit E",practice_postalcode:"1071 XA", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"psykat@hetnet.nl", title:"de heer",initials:"M.G.", last_name:"Kat", password:"Welkom01",phonenumber:"", practice_name:"Praktijk Kat - MCA", practice_street:"Dorpsweg Ransdorp 78",practice_postalcode:"1028 BR", practice_city:"AMSTERDAM",practice_phonenumber:"020 4904622",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"kats.psy@gmail.com", title:"mevrouw",initials:"S.", last_name:"Kats", password:"Welkom01",phonenumber:"644338871", practice_name:"Praktijk voor Zwangerschap en Psychiatrie", practice_street:"Levie Vorstkade 65",practice_postalcode:"3061 ZM", practice_city:"ROTTERDAM",practice_phonenumber:"",fax:"",website:"www.zwangerschap-en-psychiatrie.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"praktijk@marjoleinkeijzer.nl", title:"mevrouw",initials:"M.", last_name:"Keijzer", password:"Welkom01",phonenumber:"613384409", practice_name:"Bedrijvige Bij", practice_street:"Lagedijk 1 -3",practice_postalcode:"1541 KA", practice_city:"KOOG A/D ZAAN",practice_phonenumber:"",fax:"",website:"www.marjoleinkeijzer.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"yfke_harmsen@hotmail.com", title:"mevrouw",initials:"Y.", last_name:"van Kernebeek-Harmsen", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"Oranje Nassaulaan 48 Boven",practice_postalcode:"1075 AR", practice_city:"AMSTERDAM",practice_phonenumber:"020 6751429",fax:"020 4712123",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"a.kolman@planet.nl", title:"de heer",initials:"A.", last_name:"Kolman", password:"Welkom01",phonenumber:"620813607", practice_name:"", practice_street:"Pontanusstraat 32",practice_postalcode:"1093 SB", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"rkaltes@upcmail.nl", title:"mevrouw",initials:"R.H.", last_name:"Korthals Altes", password:"Welkom01",phonenumber:"06 45048868", practice_name:"", practice_street:"Amstelkade 29 H",practice_postalcode:"1078 AE", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"Jetkranendonk@gmail.com", title:"mevrouw",initials:"H.H.", last_name:"Kranendonk", password:"Welkom01",phonenumber:"06 51499073", practice_name:"", practice_street:"Weesperzijde 0",practice_postalcode:"1091 EM", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"info@praktijkkurt.nl", title:"de heer",initials:"M.", last_name:"Kurt", password:"Welkom01",phonenumber:"06 12325570", practice_name:"", practice_street:"Hageland 117-119",practice_postalcode:"1072 BC", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"www.praktijkkurt.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"psylaan@xs4all.nl", title:"de heer",initials:"N.C.", last_name:"van der Laan", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"Kruithuisstraat 82",practice_postalcode:"1018 WW", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"info@praktijkladuc.nl", title:"de heer",initials:"T.", last_name:"Laduc", password:"Welkom01",phonenumber:"", practice_name:"Praktijk Laduc", practice_street:"Amstelveenseweg 88-4",practice_postalcode:"1075 XJ", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"www.praktijkladuc.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"dick.lam.online@gmail.com", title:"de heer",initials:"D.", last_name:"Lam", password:"Welkom01",phonenumber:"653867766", practice_name:"", practice_street:"Okeghemstraat 2 HS",practice_postalcode:"1075 PM", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"lenz@planet.nl", title:"de heer",initials:"T.M.", last_name:"Lenz", password:"Welkom01",phonenumber:"", practice_name:"Het Ruysdaelcollectief", practice_street:"Ruysdaelstraat 49 A1 unit E",practice_postalcode:"1071 XA", practice_city:"AMSTERDAM",practice_phonenumber:"020 4282081",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"praktijk@e-psychiater.nl", title:"de heer",initials:"J.A.", last_name:"van der Linden", password:"Welkom01",phonenumber:"", practice_name:"Praktijk ePsychiater", practice_street:"Amstel 240",practice_postalcode:"1017 AK", practice_city:"AMSTERDAM",practice_phonenumber:"020 4236211",fax:"",website:"www.e-psychiater.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"aemlinszenkooy@hotmail.com", title:"mevrouw",initials:"A.E.M.", last_name:"Linszen-Kooy", password:"Welkom01",phonenumber:"", practice_name:"Praktijk Linszen", practice_street:"Nieuwe Keizersgracht 69",practice_postalcode:"1018 VD", practice_city:"AMSTERDAM",practice_phonenumber:"020 6247657",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"wh_lionarons@hotmail.com", title:"de heer",initials:"W.H.", last_name:"Lionarons", password:"Welkom01",phonenumber:"", practice_name:"Psychiatriepraktijk W.H. Lionarons", practice_street:"Haringvlietstraat 19",practice_postalcode:"1078 JZ", practice_city:"AMSTERDAM",practice_phonenumber:"020 6750476",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"logtenberg26@zonnet.nl", title:"mevrouw",initials:"S.N.J.", last_name:"Logtenberg", password:"Welkom01",phonenumber:"06 24539064", practice_name:"", practice_street:"Grensstraat 16 -2",practice_postalcode:"1091 SZ", practice_city:"AMSTERDAM",practice_phonenumber:"020 6758103",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"malkus.willem@gmail.com", title:"de heer",initials:"W.", last_name:"Malkus", password:"Welkom01",phonenumber:"648593735", practice_name:"", practice_street:"Leidsegracht 41",practice_postalcode:"1017 NB", practice_city:"AMSTERDAM",practice_phonenumber:"020 6268414",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"ronald.mann@gmail.com", title:"de heer",initials:"R.F.", last_name:"Mann", password:"Welkom01",phonenumber:"06 46201962", practice_name:"Praktijk voor psychiatrie en psychotherapie R. F. Mann", practice_street:"Kooltjesbuurt 9",practice_postalcode:"1411 RZ", practice_city:"NAARDEN",practice_phonenumber:"",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"kmengelberg@csi.com", title:"de heer",initials:"K.", last_name:"Mengelberg", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"Den Texstraat 27",practice_postalcode:"1017 XK", practice_city:"AMSTERDAM",practice_phonenumber:"020 6256142",fax:"020 6387473",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"eveline@gooisepraktijk.nl", title:"mevrouw",initials:"E.J.", last_name:"Mojet", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"",practice_postalcode:"", practice_city:"",practice_phonenumber:"035 5230417",fax:"",website:"www.gooisepraktijk.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"basoele@yahoo.com", title:"de heer",initials:"B.L.", last_name:"Oele", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"Raamgracht 23",practice_postalcode:"1011 KJ", practice_city:"AMSTERDAM",practice_phonenumber:"020 273684",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"aoostindier@gmail.com", title:"mevrouw",initials:"A.", last_name:"Oostindiër", password:"Welkom01",phonenumber:"614606803", practice_name:"Praktijk Aerrea", practice_street:"Lagedijk 128",practice_postalcode:"1544 BK", practice_city:"ZAANDIJK",practice_phonenumber:"",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"rmc.oostveen@knmg.nl", title:"mevrouw",initials:"R.M.C.", last_name:"Oostveen", password:"Welkom01",phonenumber:"", practice_name:"Praktijk Oostveen", practice_street:"Frankenslag 23",practice_postalcode:"2582 HC", practice_city:"DEN HAAG",practice_phonenumber:"",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"graziellapiras@hotmail.com", title:"mevrouw",initials:"G.M.G.A.", last_name:"Piras", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"",practice_postalcode:"", practice_city:"",practice_phonenumber:"",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"wimplaats@planet.nl", title:"de heer",initials:"G.W.P.", last_name:"van der Plaats", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"Valeriusstraat 103 hs",practice_postalcode:"1075 EP", practice_city:"AMSTERDAM",practice_phonenumber:"020 6628773",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"rjplas@planet.nl", title:"de heer",initials:"R.J.", last_name:"van der Plas", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"Koninginneweg 41",practice_postalcode:"1075 GC", practice_city:"AMSTERDAM",practice_phonenumber:"020 6622073",fax:"020 6622073",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"secretariaat@landzichtvreeland.nl", title:"de heer",initials:"A.L.F.", last_name:"van Poppel", password:"Welkom01",phonenumber:"624915966", practice_name:"Boerderij Landzicht Vreeland", practice_street:"Nigtevechtseweg 37",practice_postalcode:"3633 XR", practice_city:"VREELAND",practice_phonenumber:"",fax:"",website:"www.landzichtvreeland.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"contact@psychiaterpost.nl", title:"de heer",initials:"P.W.", last_name:"Post", password:"Welkom01",phonenumber:"624697060", practice_name:"", practice_street:"Johannes Verhulststraat 129",practice_postalcode:"1071 NA", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"www.psychiaterpost.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"prein@fides-amsterdam.nl", title:"mevrouw",initials:"J.M.", last_name:"Prein", password:"Welkom01",phonenumber:"", practice_name:"Fides Amsterdam", practice_street:"",practice_postalcode:"", practice_city:"",practice_phonenumber:"",fax:"",website:"www.fides-amsterdam.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"pgprins@xs4all.nl", title:"de heer",initials:"P.G.", last_name:"Prins", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"Spinozastraat 3",practice_postalcode:"1018 HD", practice_city:"AMSTERDAM",practice_phonenumber:"020 6228262",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"bram@praktijkquerido.nl", title:"de heer",initials:"A.L.", last_name:"Querido", password:"Welkom01",phonenumber:"", practice_name:"Praktijk Querido", practice_street:"Larenseweg 14",practice_postalcode:"1221 CM", practice_city:"HILVERSUM",practice_phonenumber:"035 6422284",fax:"",website:"www.praktijkquerido.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"info@riedewald.nl", title:"mevrouw",initials:"K.B.M.", last_name:"Riedewald", password:"Welkom01",phonenumber:"06 32678727", practice_name:"GGZ Praktijk RIEDEK", practice_street:"Ottho Heldringstraat 17 B",practice_postalcode:"1066 XT", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"www.riedewald.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"pietrijnierse@xs4all.nl", title:"de heer",initials:"P.M.", last_name:"Rijnierse", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"Keizersgracht 761",practice_postalcode:"1017 EA", practice_city:"AMSTERDAM",practice_phonenumber:"020 4201350",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"rohak@psydok.nl", title:"mevrouw",initials:"V.", last_name:"Rohak", password:"Welkom01",phonenumber:"06 42885400", practice_name:"PsyDok, psychiatrische praktijk", practice_street:"Westerdok 718 -720",practice_postalcode:"1013 BV", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"020 3377821",website:"www.psydok.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"celestineroose@gmail.com", title:"mevrouw",initials:"C.", last_name:"Roose", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"Henriette Roland Holststraat 19",practice_postalcode:"1064 TT", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"www.psychiaterroose.praktijkinfo.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"info@praktijksporenburg.nl", title:"mevrouw",initials:"H.F.", last_name:"Rotteveel", password:"Welkom01",phonenumber:"623684747", practice_name:"Praktijk Sporenburg", practice_street:"Domselaerstraat 96",practice_postalcode:"1093 MA", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"praktijk@rubsaam.nl", title:"de heer",initials:"J.", last_name:"Rübsaam", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"Nassaukade 57",practice_postalcode:"1052 CP", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"psychiater.rubsaam.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"info@praktijkruesink.amsterdam", title:"de heer",initials:"B.", last_name:"Ruesink", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"Slotermeerlaan 69 E3",practice_postalcode:"1064 HA", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"www.praktijkruesink.amsterdam", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"hanssanders@planet.nl", title:"de heer",initials:"H.E.", last_name:"Sanders", password:"Welkom01",phonenumber:"654211537", practice_name:"", practice_street:"Karthuizersplantsoen 4",practice_postalcode:"1015 LS", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"aschade@xs4all.nl", title:"mevrouw",initials:"A.", last_name:"Schadé", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"Reinier Claeszenstraat 21 HS",practice_postalcode:"1056 WD", practice_city:"AMSTERDAM",practice_phonenumber:"020 6831430",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"wcmvanderschoot@gmail.com", title:"mevrouw",initials:"W.C.M.", last_name:"van der Schoot", password:"Welkom01",phonenumber:"06 51766466", practice_name:"", practice_street:"Titiaanstraat 42 HS",practice_postalcode:"1077 RK", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"f.sevinc@xs4all.nl", title:"mevrouw",initials:"F.", last_name:"Sevinç", password:"Welkom01",phonenumber:"06 46100371", practice_name:"", practice_street:"Piraeusplein 17",practice_postalcode:"1019 NL", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"www.fatmasevinc.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"b.sonnenschein@planet.nl", title:"de heer",initials:"B.H.M.J.", last_name:"Sonnenschein", password:"Welkom01",phonenumber:"", practice_name:"Praktijk Sonnenschein", practice_street:"Gerardus Gullaan 28",practice_postalcode:"1217 LP", practice_city:"HILVERSUM",practice_phonenumber:"035 6283889",fax:"",website:"www.praktijksonnenscheinpsychiater.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"info@psychiaterstortelder.nl", title:"de heer",initials:"F.B.M.", last_name:"Stortelder", password:"Welkom01",phonenumber:"613545142", practice_name:"", practice_street:"Keizersgracht 615 H",practice_postalcode:"1017 DS", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"www.psychiaterstortelder.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"psychiater@xs4all.nl", title:"mevrouw",initials:"B.", last_name:"Strack van Schijndel-Garofoli", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"Amstelveenseweg 740 C",practice_postalcode:"1081 JK", practice_city:"AMSTERDAM",practice_phonenumber:"020 3444410",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"o.vanstrien@extenzo.nu", title:"de heer",initials:"O.W.", last_name:"van Strien", password:"Welkom01",phonenumber:"06 24529736", practice_name:"", practice_street:"Touwslagerstraat 53",practice_postalcode:"1013 DL", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"marilenestrijbos@gmail.com", title:"mevrouw",initials:"M.H.J.", last_name:"Strijbos", password:"Welkom01",phonenumber:"", practice_name:"Wei 43", practice_street:"Weissenbruchstraat 43",practice_postalcode:"1058 KN", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"www.wei43.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"nieuwekeizers@gmail.com", title:"de heer",initials:"M.J.W.", last_name:"Swinkels", password:"Welkom01",phonenumber:"06 26088482", practice_name:"", practice_street:"Nieuwe Keizersgracht 58 bg",practice_postalcode:"1018 DT", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"psc.tanpaap@gmail.com", title:"mevrouw",initials:"P.S.C.", last_name:"Tan Paap", password:"Welkom01",phonenumber:"", practice_name:"UPPP", practice_street:"",practice_postalcode:"", practice_city:"",practice_phonenumber:"",fax:"",website:"www.uppp.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"psychiater@tessel.net", title:"mevrouw",initials:"E.M.", last_name:"Tessel", password:"Welkom01",phonenumber:"06 41623795", practice_name:"Tessel Psychiatrie, Zelfstandig gevestigde Psychiatrie Praktijk", practice_street:"Jan Luijkenstraat 102",practice_postalcode:"1071 CV", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"www.tesselpsychiatrie.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"praktijkalpthissen@gmail.com", title:"de heer",initials:"A.L.P.", last_name:"Thissen", password:"Welkom01",phonenumber:"", practice_name:"Praktijk Thissen", practice_street:"",practice_postalcode:"", practice_city:"",practice_phonenumber:"",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"katharinatrede@gmail.com", title:"mevrouw",initials:"K.", last_name:"Trede", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"Nieuwe Herengracht 3",practice_postalcode:"1011 RJ", practice_city:"Amsterdam",practice_phonenumber:"",fax:"",website:"www.katharinatrede.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"info@praktijk-urbanovich.nl", title:"mevrouw",initials:"O.I.", last_name:"Urbanovich", password:"Welkom01",phonenumber:"639602328", practice_name:"Praktijk O.I. Urbanovich voor Psychiatrie en Psychotherapie", practice_street:"",practice_postalcode:"", practice_city:"",practice_phonenumber:"",fax:"",website:"www.praktijk-urbanovich.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"a.j.vanderveer@planet.nl", title:"mevrouw",initials:"A.J.", last_name:"van der Veer", password:"Welkom01",phonenumber:"682670252", practice_name:"", practice_street:"Eerste Weteringdwarsstraat 2",practice_postalcode:"1017 TN", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"jacoveer@gmail.com", title:"de heer",initials:"J.K.", last_name:"van der Veer", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"Okeghemstraat 2 HS",practice_postalcode:"1075 PM", practice_city:"AMSTERDAM",practice_phonenumber:"020 6769552",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"info@praktijkveldhuis.nl", title:"de heer",initials:"J.H.", last_name:"Veldhuis", password:"Welkom01",phonenumber:"613995506", practice_name:"Praktijk Veldhuis", practice_street:"Oosterpark 76",practice_postalcode:"1092 AT", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"www.praktijkveldhuis.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"hansvermeulen@chello.nl", title:"de heer",initials:"H.D.B.", last_name:"Vermeulen", password:"Welkom01",phonenumber:"630568956", practice_name:"", practice_street:"WG-plein 100-873",practice_postalcode:"1054 SC", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"evandervliet.praktijk@gmail.com", title:"mevrouw",initials:"E.D.", last_name:"van der Vliet", password:"Welkom01",phonenumber:"", practice_name:"Panta Rhei", practice_street:"Keizersgracht 62",practice_postalcode:"1015 CS", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"dirk.vlietstra@gmail.com", title:"de heer",initials:"D.W.", last_name:"Vlietstra", password:"Welkom01",phonenumber:"630039297", practice_name:"Praktijk voor Psychoanalyse", practice_street:"Frans van Mierisstraat 20-2",practice_postalcode:"1071 RS", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"vlietstr@xs4all.nl", title:"mevrouw",initials:"P.", last_name:"Vlietstra-Zock", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"Frans van Mierisstraat 20 BOVEN",practice_postalcode:"1071 RS", practice_city:"AMSTERDAM",practice_phonenumber:"020 4701635",fax:"020 6791698",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"mvorstenbosch@planet.nl", title:"mevrouw",initials:"M.P.M.", last_name:"Vorstenbosch", password:"Welkom01",phonenumber:"", practice_name:"Praktijk Vorstenbosch", practice_street:"Nieuwe Achtergracht 13-1",practice_postalcode:"1018 XV", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"drjwdevos@freeler.nl", title:"de heer",initials:"J.W.", last_name:"de Vos", password:"Welkom01",phonenumber:"610302052", practice_name:"", practice_street:"Laan der Hesperiden 120",practice_postalcode:"1076 DX", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"https://sites.google.com/site/amsterdampsychiater/", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"lizelottevos@hotmail.com", title:"mevrouw",initials:"L.", last_name:"Vos", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"Galileiplantsoen 19 I",practice_postalcode:"1098 LV", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"vreeburg@fides-amsterdam.nl", title:"mevrouw",initials:"S.A.", last_name:"Vreeburg", password:"Welkom01",phonenumber:"651761957", practice_name:"Fides Amsterdam", practice_street:"Van Eeghenlaan 27",practice_postalcode:"1059 XZ", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"www.fides-amsterdam.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"info@praktijkwaldinger.nl", title:"de heer",initials:"M.D.", last_name:"Waldinger", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"De Schulp 4",practice_postalcode:"1181 NA", practice_city:"AMSTELVEEN",practice_phonenumber:"020 6404466",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"warnaar@xs4all.nl", title:"de heer",initials:"H.V.", last_name:"Warnaar", password:"Welkom01",phonenumber:"623380348", practice_name:"", practice_street:"van Breestraat 112 hs",practice_postalcode:"1071 ZV", practice_city:"AMSTERDAM",practice_phonenumber:"020 6790209",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"efjwasmann@gmail.com", title:"de heer",initials:"E.F.J.", last_name:"Wasmann", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"Saxen Weimarlaan 38 -1",practice_postalcode:"1075 CD", practice_city:"AMSTERDAM",practice_phonenumber:"020 6732164",fax:"",website:"www.efjwasmann.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"vanwechempraktijk@gmail.com", title:"de heer",initials:"H.A.", last_name:"van Wechem", password:"Welkom01",phonenumber:"06 24699738", practice_name:"Praktijk voor psychiatrie en psychotherapie", practice_street:"Frans Halsstraat 7",practice_postalcode:"1072BJ", practice_city:"AMSTERDAM",practice_phonenumber:"",fax:"",website:"www.1np.nl", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"weijma@xs4all.nl", title:"de heer",initials:"W.", last_name:"Weijer", password:"Welkom01",phonenumber:"", practice_name:"", practice_street:"Prinsengracht 1003",practice_postalcode:"1017 KN", practice_city:"AMSTERDAM",practice_phonenumber:"020 6247530",fax:"020 6389339",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
  {email:"gerontop@xs4all.nl", title:"mevrouw",initials:"A.F.B.", last_name:"Zut", password:"Welkom01",phonenumber:"649692937", practice_name:"Gerontop", practice_street:"Lindepark 2 -G",practice_postalcode:"1185 LD", practice_city:"AMSTELVEEN",practice_phonenumber:"",fax:"",website:"", member: true, expertise_id: expertises[0].id, targetaudience_id: targetaudiences[0].id},
])

images = Image.create([
  {
    filename: 'vvpao-event.png'
  },
  {
    filename: 'vvpao-event-2.png'
  },
  {
    filename: 'vvpao-event-3.png'
  }
])

newsitems = Newsitem.create([
  {
    title: 'Nieuws 1',
    content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia rerum accusantium libero, corrupti molestias ea quasi vero quis neque. Eius voluptatum earum quas nobis. Repellendus vel quidem suscipit quo atque.',
    imagefilename1: 'vvpao-event.png',
    user_id: users[0].id
  },
  {
    title: 'Nieuws 2',
    content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius consectetur beatae, quis veritatis culpa possimus cupiditate fuga eos facere et veniam animi excepturi? Eius quae saepe dolores, sapiente et excepturi.',
    imagefilename1: 'vvpao-event-2.png',
    user_id: users[0].id

  },
  {
    title: 'Nieuws 3',
    content: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta quam minima, aut, porro corrupti debitis voluptatem alias consectetur. Quas dolores, culpa numquam facilis! Cumque officia, sint voluptatibus enim dignissimos amet!',
    imagefilename1: 'vvpao-event-3.png',
    user_id: users[0].id
  }
])

trainings = Training.create([
  {
    title: 'Training1',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores, assumenda necessitatibus ipsum laboriosam quod veniam sapiente maiores obcaecati, nulla ullam deleniti qui autem magnam, vero repellendus quo earum quis error!',
    organiser_id: users[1].id
  },
  {
    title: 'Training2',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores, assumenda necessitatibus ipsum laboriosam quod veniam sapiente maiores obcaecati, nulla ullam deleniti qui autem magnam, vero repellendus quo earum quis error!',
    organiser_id: users[0].id
  }
])

usertrainings = Usertraining.create([
  {
    user_id: users[2].id,
    training_id: trainings[0].id
  },
  {
    user_id: users[2].id,
    training_id: trainings[1].id
  },
  {
    user_id: users[1].id,
    training_id: trainings[0].id
  },
  {
    user_id: users[1].id,
    training_id: trainings[1].id
  },
  {
    user_id: users[0].id,
    training_id: trainings[0].id
  },
  {
    user_id: users[0].id,
    training_id: trainings[1].id
  }
])

texts = Text.create([
  {
    name: 'Vereniging van Vrijgevestigd Psychiaters Amsterdam & Omstreken',
    text: 'Deze website is bedoeld voor potentiële patiënten, potentiële nieuwe leden, mensen die iets over de VVPAO willen weten, en uiteraard voor de leden. De VVPAO stelt zich ten doel de vrije praktijkvoering voor psychiaters te ondersteunen door het vormen van dit netwerk, onderlinge steun, informatie en nascholing. De VVPAO doet niet aan directe belangenbehartiging.
De VVPAO is wel beschikbaar als gesprekspartner voor maatschappelijke partijen die zich willen informeren over de vrije praktijkvoering. Waar vrouw staat wordt ook man bedoeld , e.v.v.'
  },
  {
    name: 'Klachtencommissie',
    text: 'Indien u een klacht heeft over een psychiater dan kunt u die het beste eerst met de psychiater zelf bespreken.<br>Als dat voor u niet voldoende oplevert kunt u schriftelijk een klacht indienen bij onderstaande klachtencommissie en een afschrift sturen naar de psychiater.<br><br>Klachtencommissie Arkin en GGZinGeest<br>Margreet Spreij, ambtelijk secretaris<br>Postbus 74077<br>1070 BB Amsterdam<br><br>telefoonnummer 020 7885140<br>fax 020 7885141<br>email: klachtencie@ggzingeest.nl<br>of m.spreij@ggzingeest.nl<br> <br>De klachtencommissie wordt per klacht samengesteld uit de leden die worden afgevaardigd door de samenstellende instellingen en vereniging, op dit moment Arkin, GGZin Geest en de VVPAO. Vanuit de VVPAO zijn twee leden afgevaardigd. Bij een klacht tegen een vrijgevestigd psychiater wordt een commissie samengesteld. Daarin zullen geen leden van de VVPAO zitting hebben.<br><br>Leden van de klachtencommissie declareren hun uren. De kosten van de klacht komen voor rekening van de psychiater waartegen de klacht is ingediend. <br><br>Op dit moment hebben namens de VVPAO zitting in de klachtencommissie: Alex Kolman en Pieter Rood.<br><br>Wij allen zijn hen zeer erkentelijk voor hun bijdrage aan de VVPAO.<br><br>Jaarverslagen Klachtencommissie Arkin en GGZinGeest zijn op te vragen bij het secretariaat van de klachtencommissie.<br>'
  },
  {
    name: 'Conflict of Interest',
    text: 'De VVPAO bestaat bij de gratie van 140 leden die ieder jaarlijks €100 contributie betalen.
Van deze contributies worden vacatiegelden aan de bestuursleden betaald en het communicatienetwerk en administratieve werk betaald.
De VVPAO wordt voorts financieel ondersteund door verschillende farmaceutische industrieën.'
  },
  {
    name: 'De VVPAO ontwikkelt de volgende activiteiten:',
    text: 'Er worden minimaal vier nascholingsavonden per jaar georganiseerd in Amsterdam, zo mogelijk samen met:'
  },
  {
    name: 'De VVPAO organiseert ondersteuning:',
    text: ''
  },
  {
    name: 'Conflict of Interest',
    text: 'De VVPAO bestaat bij de gratie van 140 leden die ieder jaarlijks €100 contributie betalen.
Van deze contributies worden vacatiegelden aan de bestuursleden betaald en het communicatienetwerk en administratieve werk betaald.
De VVPAO wordt voorts financieel ondersteund door verschillende farmaceutische industrieën.'
  },
  {
    name: 'tekstintro1',
    text: 'De VVPAO neemt deel aan de Klachtencommissie Arkin en GGZinGeest. Twee leden van de VVPAO hebben zitting in de klachtencommissie.'
  },
  {
    name: 'tekstintro2',
    text: 'De VVPAO verspreid relevante informatie per mail onder haar leden en probeert antwoorden te vinden op vragen van haar leden.'
  },
  {
    name: 'Secretariaat',
    text: 'Winja Leuijerink,<br>Henriëtte Roland Holststraat 19<br>1064TS Amsterdam<br>'
  },
  {
    name: 'email secretariaat',
    text: 'info@vvpao.amsterdam'
  }
])

listitems = Listitem.create([
  {
    text: 'Amsterdamse huisartsen (AHV) en',
    text_id: texts[3].id
  },
  {
    text: 'Amsterdamse Vrijgevestigde Psychotherapeuten (RVVP)',
    text_id: texts[3].id
  },
  {
    text: 'voor haar nieuwe leden',
    text_id: texts[4].id
  },
  {
    text: 'bij intervisie, kwaliteitsvisitatie, materiële controle en inspectiecontrole',
    text_id: texts[4].id
  },
  {
    text: 'keuze softwareprogramma en organiseren softwaregroepen',
    text_id: texts[4].id
  },
  {
    text: 'organiseren waarnemingsgroepen',
    text_id: texts[4].id
  },
  {
    text: 'bij klachten of suïcide in de praktijk',
    text_id: texts[4].id
  },
  {
    text: 'hardwareproblemen',
    text_id: texts[4].id
  },
  {
    text: 'boekhouding en belastingproblemen',
    text_id: texts[4].id
  },
])

bestuurs = Bestuur.create ([
  {
    role: 'chair',
    description: 'Voorzitter',
    user_id: users[0].id
  },
  {
    role: 'member',
    description: 'Nascholing, software, softwaregroepen, Stedelijk Overleg',
    user_id: users[1].id
  },
  {
    role: 'treasurer',
    description: 'Penningmeester',
    user_id: users[2].id
  }
])

categories = Category.create ([
  {
    description: 'Verenigingen voor Vrijgevestigde Psychiaters'
  },
  {
    description: 'Verzekeraars'
  },
  {
    description: 'Overig'
  }
])

links = Link.create ([
  {
    url: 'http://www.vvpao.nl/',
    description: 'VVP Alkmaar en omstreken',
    category_id: categories[0].id
  },
  {
    url: 'https://www.psychiaters-utrecht.nl/',
    description: 'VVP Utrecht',
    category_id: categories[0].id
  },
  {
    url: 'https://vrijengevestigd.praktijkinfo.nl/',
    description: 'VVP Nijmegen',
    category_id: categories[0].id
  },
  {
    url: 'https://www.achmea.nl/Paginas/default.aspx',
    description: 'Achmea/ AGIS',
    category_id: categories[1].id
  },
  {
    url: 'https://www.cooperatievgz.nl/cooperatie-vgz',
    description: 'VGZ',
    category_id: categories[1].id
  },
  {
    url: 'https://www.menzis.nl/',
    description: 'Menzis',
    category_id: categories[1].id
  },
  {
    url: 'https://www.zorgenzekerheid.nl/',
    description: 'Zorg en Zekerheid',
    category_id: categories[1].id
  },
  {
    url: 'https://www.cz.nl/',
    description: 'CZ / OHRA / Delta Lloyd',
    category_id: categories[1].id
  },
  {
    url: 'https://www.defriesland.nl/consumenten/default.aspx',
    description: 'De Friesland',
    category_id: categories[1].id
  },
  {
    url: 'https://www.nvvp.net/zelfstandig-gevestigde-psychiaters',
    description: 'Nederlandse Vereniging voor Psychiatrie',
    category_id: categories[2].id
  }
])


p "seeds done"
