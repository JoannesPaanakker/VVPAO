rails g migration AddItemsToUser first_name:string last_name:String initials:string street:string streetnumber:integer number_extension:string postalcode:string city:string country:string phonenumber:string practice_name:string practice_street:string practice_streetnumber:integer practice_number_extension:string practice_postalcode:string practice_city:string practice_country:string practice_email:string practice_phonenumber website:string
rails g migration AddImageToUser image:filename




rails g migration AddNewregistrationToUser newregistrations:boolean ,default: true
rails g migration AddWaitingperiodToUser waitingperiod:string


rails g migration AddExpertiseToUser expertise:references
rails g migration AddTargetaudienceToUser targetaudience:references

rails g migration AddUserToUsertraining user:references
rails g migration AddTrainingToUsertraining training:references

rails g migration AddUserToNewsitem user:references
rails g migration AddOrganiserToTraining user:references
rails g migration AddTextToListitem text:references

rails g migration AddUserToBestuur user:references

rails g migration AddCategoryToLink category:references

rails g migration AddExtrasToUser tusssenvoegsel:string big:string buddy:boolean training_suggestion:string personal_data_public:boolean practice_data_public:boolean



    contract: true,
    buddy: '',
    training_suggestion: "",
    personal_data_public: false,
    practice_data_public: true,
