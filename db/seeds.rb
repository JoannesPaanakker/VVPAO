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
    expertise_id: expertises[8].id,
    targetaudience_id: targetaudiences[1].id,
    big: '',
    contract: true,
    buddy: false,
    training_suggestion: "",
    personal_data_public: false,
    practice_data_public: true,
  }
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
