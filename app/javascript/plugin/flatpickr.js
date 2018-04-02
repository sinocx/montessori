
import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css"
import { French } from "flatpickr/dist/l10n/fr.js"
// Note this is important!
let date = new Date()
let date2year = date + "2Y"

flatpickr(".datepicker", {
     "locale": French,
     changeYear: true,
     dateFormat: "d.m.Y",
     minDate: date,
     maxDate: date2year,
     enableTime: true // locale for this instance only
   });
