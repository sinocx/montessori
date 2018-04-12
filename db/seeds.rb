p "destroy ALl"
  SecondForm.destroy_all
  ChildNoValid.destroy_all
  ParentNoValid.destroy_all
  MoreInfo.destroy_all
  Subscription.destroy_all
p "Destroy Sub ok"
School.destroy_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
School.create!(address:"42 rue léon gambetta, Montrouge")
p "Sub create!"
sub1 = Subscription.create!(status: 0)
sub2 = Subscription.create!(status: 1)
sub3 = Subscription.create!(status: 2)
sub4 = Subscription.create!(status: 3)
sub5 = Subscription.create!(status: 0)
sub6 = Subscription.create!(status: 1)
sub7 = Subscription.create!(status: 2)
sub8 = Subscription.create!(status: 3)
sub9 = Subscription.create!(status: 0)
sub10 = Subscription.create!(status: 1)
sub11 = Subscription.create!(status: 2)
sub13 = Subscription.create!(status: 3)
sub14 = Subscription.create!(status: 0)
sub15 = Subscription.create!(status: 1)
p "Sub create!d"

p "Child create!"
ChildNoValid.create!(first_name:"Romy", last_name: "Sarfati", gender: "Féminin", birth_date: "20/02/2012", nationality: "Française",
                            first_lang: "Francais", snd_lang: "Anglais", montessori_before: false, comment: "Aucun commentaire", subscription: sub1,
                            child_atmosphere: 1, start_date: '01/07/2018')
ChildNoValid.create!(first_name:"Joseph", last_name: "Sarfati", gender: "Masculin", birth_date: "6/10/2015", nationality: "Française", first_lang: "Francais", snd_lang: "Anglais", montessori_before: false, comment: "Aucun commentaire",
                            subscription: sub6, child_atmosphere: 1, start_date: '01/07/2018')
ChildNoValid.create!(first_name:"Nicolas", last_name: "Amstrong", gender: "Féminin", birth_date: "20/02/2016", nationality: "Française", first_lang: "Francais", snd_lang: "Anglais", montessori_before: false, comment: "Aucun commentaire", subscription: sub5, child_atmosphere: 0, start_date: '01/07/2018')
ChildNoValid.create!(first_name:"Jean", last_name: "DuPont", gender: "Féminin", birth_date: "20/02/2016", nationality: "Française", first_lang: "Francais", snd_lang: "Anglais", montessori_before: false, comment: "Aucun commentaire", subscription: sub4, child_atmosphere: 0, start_date: '01/07/2018')
ChildNoValid.create!(first_name:"Hugo", last_name: "Bacard", gender: "Féminin", birth_date: "20/02/2016", nationality: "Française", first_lang: "Francais", snd_lang: "Anglais", montessori_before: false, comment: "Aucun commentaire", subscription: sub3, child_atmosphere: 0, start_date: '01/07/2018')
ChildNoValid.create!(first_name:"Anais", last_name: "Bacard", gender: "Féminin", birth_date: "20/02/2016", nationality: "Française", first_lang: "Francais", snd_lang: "Anglais", montessori_before: false, comment: "Aucun commentaire", subscription: sub3, child_atmosphere: 0, start_date: '01/07/2018')
ChildNoValid.create!(first_name:"Matthew", last_name: "Balker", gender: "Féminin", birth_date: "20/02/2012", nationality: "Française", first_lang: "Francais", snd_lang: "Anglais", montessori_before: true, montessori_name: "Montessori101", comment: "Aucun commentaire", subscription: sub15, child_atmosphere: 1, start_date: '01/07/2018')
ChildNoValid.create!(first_name:"Luc", last_name: "Belair", gender: "Féminin", birth_date: "20/02/2012", nationality: "Française", first_lang: "Francais", snd_lang: "Anglais", montessori_before: false, comment: "Aucun commentaire", subscription: sub7, child_atmosphere: 1, start_date: '01/07/2018')
ChildNoValid.create!(first_name:"Vladirmir", last_name: "Berkovich", gender: "Féminin", birth_date: "20/02/2012", nationality: "Française", first_lang: "Francais", snd_lang: "Anglais", montessori_before: false, comment: "Aucun commentaire", subscription: sub8, child_atmosphere: 1, start_date: '01/07/2018')
ChildNoValid.create!(first_name:"Benoit", last_name: "Bertrand", gender: "Féminin", birth_date: "20/02/2016", nationality: "Française", first_lang: "Francais", snd_lang: "Anglais", montessori_before: false, comment: "Aucun commentaire", subscription: sub9, child_atmosphere: 0, start_date: '01/07/2018')
ChildNoValid.create!(first_name:"bhowil", last_name: "Prasenjit", gender: "Féminin", birth_date: "20/02/2016", nationality: "Française", first_lang: "Francais", snd_lang: "Anglais", montessori_before: false, comment: "Aucun commentaire", subscription: sub13, child_atmosphere: 0, start_date: '01/07/2018')
ChildNoValid.create!(first_name:"Zoe", last_name: "Chatzidzakis", gender: "Féminin", birth_date: "20/02/2012", nationality: "Française", first_lang: "Francais", snd_lang: "Anglais", montessori_before: false, comment: "Aucun commentaire", subscription: sub14, child_atmosphere: 1, start_date: '01/07/2018')
ChildNoValid.create!(first_name:"ke", last_name: "Chen", gender: "Féminin", birth_date: "20/02/2012", nationality: "Française", first_lang: "Francais", snd_lang: "Anglais", montessori_before: false, comment: "Aucun commentaire", subscription: sub10, child_atmosphere: 1, start_date: '01/07/2018')
ChildNoValid.create!(first_name:"Miaofen", last_name: "Chen", gender: "Féminin", birth_date: "20/02/2012", nationality: "Française", first_lang: "Francais", snd_lang: "Anglais", montessori_before: false, comment: "Aucun commentaire", subscription: sub10, child_atmosphere: 1, start_date: '01/07/2018')
ChildNoValid.create!(first_name:"Pietro", last_name: "Dello", gender: "Féminin", birth_date: "20/02/2012", nationality: "Française", first_lang: "Francais", snd_lang: "Anglais", montessori_before: false, comment: "Aucun commentaire", subscription: sub11, child_atmosphere: 1, start_date: '01/07/2018')
ChildNoValid.create!(first_name:"Daniel", last_name: "Dello", gender: "Féminin", birth_date: "20/02/2012", nationality: "Française", first_lang: "Francais", snd_lang: "Anglais", montessori_before: false, comment: "Aucun commentaire", subscription: sub11, child_atmosphere: 1, start_date: '01/07/2018')
p "Child Created"

p "Parent Create"

ParentNoValid.create!(email: "ericsarfati@hotmail.fr", first_name: "Eric", last_name: "Sarfati", lang: "Francais", situation:"Marié(e)", job: "Finance", fiscal: "54000", address: "25 places jules ferry", zip_code: "92120", city: "Montrouge", phone: "0145785878", mobile: "0645758785", role: "Père", subscription: sub1)
ParentNoValid.create!(email: "nathaliesarfati@hotmail.fr", first_name: "Nathalie", last_name: "Sarfati", lang: "Francais", situation:"Marié(e)", job: "Finance", fiscal: "54000", address: "25 rue guérrin Montrouge", zip_code: "94220", city: "Charenton", phone: "0135785878", mobile: "0645558785", role: "Mère", subscription: sub1)
ParentNoValid.create!(email: "pauline@hotmail.fr", first_name: "Pauline", last_name: "Lemonnier", lang: "Francais", situation:"Marié(e)", job: "Finance", fiscal: "54000", address: "25 places jules ferry", zip_code: "92120", city: "Montrouge", phone: "0185785878", mobile: "0645558785", role: "Mère", subscription: sub6)
ParentNoValid.create!(email: "P.amstrong@hotmail.fr", first_name: "Jean", last_name: "Amstrong", lang: "Francais", situation:"Marié(e)", job: "Finance", fiscal: "54000", address: "25 places jules ferry", zip_code: "92120", city: "Montrouge", phone: "0185785878", mobile: "0645752785", role: "Père", subscription: sub5)
ParentNoValid.create!(email: "M.amstrong@hotmail.fr", first_name: "Emilie", last_name: "Amstrong", lang: "Francais", situation:"Marié(e)", job: "Finance", fiscal: "54000", address: "25 places jules ferry", zip_code: "92120", city: "Montrouge", phone: "0185785878", mobile: "0641752785", role: "Mère", subscription: sub5)
ParentNoValid.create!(email: "P.dupont@hotmail.fr", first_name: "Elvis", last_name: "Dupont", lang: "Francais", situation:"Marié(e)", job: "Finance", fiscal: "54000", address: "25 places jules ferry", zip_code: "92120", city: "Montrouge", phone: "0185785878", mobile: "0646758785", role: "Père", subscription: sub4)
ParentNoValid.create!(email: "M.dupont@hotmail.fr", first_name: "Beatrice", last_name: "Dupont", lang: "Francais", situation:"Marié(e)", job: "Finance", fiscal: "54000", address: "25 places jules ferry", zip_code: "92120", city: "Montrouge", phone: "0185785878", mobile: "0631758785", role: "Mère", subscription: sub4)
ParentNoValid.create!(email: "P.Bacard@hotmail.fr", first_name: "Ethan", last_name: "Bacard", lang: "Francais", situation:"Séparé(e)", job: "Finance", fiscal: "54000", address: "25 places jules ferry", zip_code: "92120", city: "Montrouge", phone: "0185785878", mobile: "0647558785", role: "Père", subscription: sub3)
ParentNoValid.create!(email: "P.Balker@hotmail.fr", first_name: "Daniel", last_name: "Balker", lang: "Francais", situation:"Marié(e)", job: "Finance", fiscal: "54000", address: "25 places jules ferry", zip_code: "92120", city: "Montrouge", phone: "0185785878", mobile: "0642058785", role: "Père", subscription: sub15)
ParentNoValid.create!(email: "M.Balker@hotmail.fr", first_name: "Daniela", last_name: "Balker", lang: "Francais", situation:"Marié(e)", job: "Finance", fiscal: "54000", address: "25 places jules ferry", zip_code: "92120", city: "Montrouge", phone: "0185785878", mobile: "0642748785", role: "Mère", subscription: sub15)
ParentNoValid.create!(email: "M.Belair@hotmail.fr", first_name: "Vanessa", last_name: "Belair", lang: "Francais", situation:"Séparé(e)", job: "Finance", fiscal: "54000", address: "25 places jules ferry", zip_code: "92120", city: "Montrouge", phone: "0185785878", mobile: "078758785", role: "Mère", subscription: sub7)
ParentNoValid.create!(email: "P.Berkovich@hotmail.fr", first_name: "Cesar", last_name: "Berkovich", lang: "Francais", situation:"Séparé(e)", job: "Finance", fiscal: "54000", address: "25 places jules ferry", zip_code: "92120", city: "Montrouge", phone: "0185785878", mobile: "0758758785", role: "Père", subscription: sub8)
ParentNoValid.create!(email: "M.Bertrand@hotmail.fr", first_name: "Sofia", last_name: "Bertrand", lang: "Francais", situation:"Séparé(e)", job: "Finance", fiscal: "54000", address: "25 places jules ferry", zip_code: "92120", city: "Montrouge", phone: "0185785878", mobile: "0712358785", role: "Mère", subscription: sub9)
ParentNoValid.create!(email: "P.Prasenjit@hotmail.fr", first_name: "Antoine", last_name: "Prasenjit", lang: "Francais", situation:"Marié(e)", job: "Finance", fiscal: "54000", address: "25 places jules ferry", zip_code: "92120", city: "Montrouge", phone: "0185785878", mobile: "0687454785", role: "Père", subscription: sub13)
ParentNoValid.create!(email: "P.Chatzidzakis@hotmail.fr", first_name: "Pietro", last_name: "Chatzidzakis", lang: "Francais", situation:"Marié(e)", job: "Finance", fiscal: "54000", address: "25 places jules ferry", zip_code: "92120", city: "Montrouge", phone: "0185785878", mobile: "0678558785", role: "Père", subscription: sub14)
ParentNoValid.create!(email: "M.Chatzidzakis@hotmail.fr", first_name: "MARIA", last_name: "Chatzidzakis", lang: "Francais", situation:"Marié(e)", job: "Finance", fiscal: "54000", address: "25 places jules ferry", zip_code: "92120", city: "Montrouge", phone: "0185785878", mobile: "0673058785", role: "Mère", subscription: sub14)
ParentNoValid.create!(email: "P.Chen@hotmail.fr", first_name: "Yang", last_name: "Chen", lang: "Francais", situation:"Marié(e)", job: "Finance", fiscal: "54000", address: "25 places jules ferry", zip_code: "92120", city: "Montrouge", phone: "0185785878", mobile: "0674558785", role: "Père", subscription: sub10)
ParentNoValid.create!(email: "M.Chen@hotmail.fr", first_name: "Laurence", last_name: "Chen", lang: "Francais", situation:"Marié(e)", job: "Finance", fiscal: "54000", address: "25 places jules ferry", zip_code: "92120", city: "Montrouge", phone: "0185785878", mobile: "0678158785", role: "Mère", subscription: sub10)
ParentNoValid.create!(email: "P.Dello@hotmail.fr", first_name: "Dylan", last_name: "Dello", lang: "Francais", situation:"Séparé(e)", job: "Finance", fiscal: "54000", address: "25 places jules ferry", zip_code: "92120", city: "Montrouge", phone: "0185785878", mobile: "0741758785", role: "Père", subscription: sub11)

p "Created"

p "More_info Create"

MoreInfo.create!(know_the_school: "Internet", reason_why: "Site parfait ! :)", subscription: sub1)
MoreInfo.create!(know_the_school: "Internet", reason_why: "Site parfait ! :)", subscription: sub2)
MoreInfo.create!(know_the_school: "Internet", reason_why: "Site parfait ! :)", subscription: sub3)
MoreInfo.create!(know_the_school: "Internet", reason_why: "Site parfait ! :)", subscription: sub4)
MoreInfo.create!(know_the_school: "Internet", reason_why: "Site parfait ! :)", subscription: sub5)
MoreInfo.create!(know_the_school: "Internet", reason_why: "Site parfait ! :)", subscription: sub6)
MoreInfo.create!(know_the_school: "Internet", reason_why: "Site parfait ! :)", subscription: sub7)
MoreInfo.create!(know_the_school: "Internet", reason_why: "Site parfait ! :)", subscription: sub7)
MoreInfo.create!(know_the_school: "Internet", reason_why: "Site parfait ! :)", subscription: sub8)
MoreInfo.create!(know_the_school: "Internet", reason_why: "Site parfait ! :)", subscription: sub9)
MoreInfo.create!(know_the_school: "Internet", reason_why: "Site parfait ! :)", subscription: sub10)
MoreInfo.create!(know_the_school: "Internet", reason_why: "Site parfait ! :)", subscription: sub11)
MoreInfo.create!(know_the_school: "Internet", reason_why: "Site parfait ! :)", subscription: sub13)
MoreInfo.create!(know_the_school: "Internet", reason_why: "Site parfait ! :)", subscription: sub14)
MoreInfo.create!(know_the_school: "Internet", reason_why: "Site parfait ! :)", subscription: sub15)

p "MoreInfo Created"

