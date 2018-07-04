��          �      |      �    �  �     �   �  �   c  �   D  �   �  �   �  r  �  �  %	  x   �
  .  1  6   `  5   �  6   �  9     7   >  6   v    �    �  �   �  G   �  i  �  3  a  �   �  �   a  �     �     	  �    �  �  �  �  q  w   Z  R  �  :   %  ;   `  ;   �  =   �  9     ;   P  ?  �  9  �   �   "  G   �"                     
                                       	                                     
        Gets conjugation information corresponding to the given template.

        :param template: string.
            Name of the verb ending pattern.
        :return: OrderedDict or None.
            OrderedDict containing the conjugated suffixes of the template.

         
        Gets verb information and returns a VerbInfo instance.

        :param verb: string.
            Verb to conjugate.
        :return: VerbInfo object or None.

         
        Load and parses the conjugations from xml file.

        :param conjugations_file: string or path object.
            Path to the conjugation xml file.

         
        Load and parses the inflected forms of the tense from xml file.

        :param tense: string.
            The current tense being processed.
        :return: list.
            List of conjugated suffixes.

         
        Load and parses the verbs from xml file.

        :param verbs_file: string or path object.
            Path to the verbs xml file.

         
        Parses XML file

        :param file: FileObject.
            XML file containing the conjugation templates
        :return: OrderedDict.
            An OrderedDict containing all the conjugation templates in the file.

         
        Parses XML file

        :param file: FileObject.
            XML file containing the verbs.
        :return: OrderedDict.
            An OrderedDict containing the verb and its template for all verbs in the file.

         
        | Checks if the verb is a valid verb in the given language.
        | English words are always treated as possible verbs.
        | Verbs in other languages are filtered by their endings.

        :param verb: string.
            The verb conjugate.
        :return: bool.
            True if the verb is a valid verb in the language. False otherwise.

         
        | Detects the allowed endings for verbs in the supported languages.
        | All the supported languages except for English restrict the form a verb can take.
        | As English is much more productive and varied in the morphology of its verbs, any word is allowed as a verb.

        :return: set.
            A set containing the allowed endings of verbs in the target language.

         
        | Populates the inflected forms of the verb.
        | Adds personal pronouns to the inflected verbs.

         
        | Populates the inflected forms of the verb.
        | This is the generic version of this method.
        | It does not add personal pronouns to the conjugated forms.
        | This method can handle any new language if the conjugation structure conforms to the Verbiste XML Schema.

         
    This class defines the English Verb Object.

     
    This class defines the French Verb Object.

     
    This class defines the Italian Verb Object.

     
    This class defines the Portuguese Verb Object.

     
    This class defines the Romanian Verb Object.

     
    This class defines the Spanish Verb Object.

     
    This class defines the Verb Object.

    :param verb_info: VerbInfo Object.
    :param conjug_info: OrderedDict.
    :param subject: string.
        Toggles abbreviated or full pronouns.
        The default value is 'abbrev'.
        Select 'pronoun' for full pronouns.

     
    This class defines the Verbiste verb information structure.

    :param infinitive: string.
        Infinitive form of the verb.
    :param root: string.
        Lexical root of the verb.
    :param template: string.
        Name of the verb ending pattern.

     
    This is the class handling the Verbiste xml files.

    :param language: string.
    | The language of the conjugator. The default value is fr for French.
    | The allowed values are: fr, en, es, it, pt, ro.

     Unsupported language.
The allowed languages are fr, en, es, it, pt, ro. Project-Id-Version: 
POT-Creation-Date: 2018-06-15 21:52+0200
PO-Revision-Date: 2018-06-16 14:40+0200
Language-Team: 
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Generated-By: pygettext.py 1.5
X-Generator: Poedit 2.0.8
Last-Translator: SekouD <sekoud.python>
Plural-Forms: nplurals=2; plural=(n != 1);
Language: it
 
        Ottiene informazioni di coniugazione corrispondenti al modello specificato.

        :param template: string.
            Nome del modello di fine del verbo.
        :return: OrderedDict or None.
            OrderedDict contenente i suffissi coniugati del modello.

         
        Ottiene informazioni sui verbi e restituisce un'istanza de VerbInfo.

        :param verb: string.
            Verbo da coniugare.
        :return: VerbInfo object or None.

         
        Carica e analizza le coniugazioni dal file xml.

        :param conjugations_file: string or path object.
            Percorso del file xml di coniugazione.

         
        Carica e analizza le forme flesse del tempo dal file xml.

        :param tense: string.
            Il tempo corrente in elaborazione.
        :return: list.
            Elenco di suffissi coniugati.

         
        Carica e analizza i verbi dal file xml.

        :param verbs_file: string or path object.
            Percorso del file xml dei verbi.

         
        Analizza il file XML

        :param file: FileObject.
            File XML contenente i modelli di coniugazione
        :return: OrderedDict.
            Un OrderedDict contenente tutti i modelli di coniugazione nel file.

         
        Analizza il file XML

        :param file: FileObject.
            File XML contenente i verbi
        :return: OrderedDict.
            Un OrderedDict contenente il verbo e il suo modello per tutti i verbi nel file.

         
        | Controlla se il verbo è un verbo valido nella lingua data.
        | Le parole inglesi sono sempre trattate come possibili verbi.
        | I verbi in altre lingue sono filtrati dalle loro terminazioni.

        :param verb: string.
            Il verbo coniugare.
        :return: bool.
            True se il verbo è un verbo valido nella lingua. False altrimenti.

         
        | Rileva le terminazioni consentite per i verbi nelle lingue supportate.
        | Tutte le lingue supportate tranne l'inglese limitano il modulo che un verbo può assumere.
        | Poiché l'inglese è molto più produttivo e vario nella morfologia dei suoi verbi, qualsiasi parola è consentita come un verbo.

         : return: set.
            Un set contenente le terminazioni consentite di verbi nella lingua di destinazione.

         
        | Compila le forme flesse del verbo.
        | Aggiunge pronomi personali ai verbi inflessi.

         
        | Compila le forme flesse del verbo.
        | Questa è la versione generica di questo metodo.
        | Non aggiunge pronomi personali alle forme coniugate.
        | Questo metodo può gestire qualsiasi nuovo linguaggio se la struttura di coniugazione è conforme allo schema XML di Verbiste.

         
    Questa classe definisce l'oggetto Verb inglese.

     
    Questa classe definisce l'oggetto Verb francese.

     
    Questa classe definisce l'oggetto Verb italiano.

     
    Questa classe definisce l'oggetto Verb Portoghese.

     
    Questa classe definisce l'oggetto Verb rumeno.

     
    Questa classe definisce l'oggetto Verb spagnolo.

     
    Questa classe definisce l'oggetto Verb.

    :param verb_info: VerbInfo Object.
    :param conjug_info: OrderedDict.
    :param subject: string.
        Attiva i pronomi abbreviati o pieni.
        Il valore predefinito è 'abbrev'.
        Seleziona "pronome" per i pronomi completi.

     
    Questa classe definisce la struttura delle informazioni del verbo del Verbiste.

    :param infinitive: string.
        Forma infinita del verbo
    :param root: string.
        Radice lessicale del verbo.
    :param template: string.
        Nome del modello di fine del verbo.

     
    Questa è la classe che gestisce i file xml di Verbiste.

    :param language: string.
    | La lingua del coniugatore. Il valore predefinito è fr per il francese.
    | I valori consentiti sono: fr, en, es, it, pt, ro.

     Lingua non supportata
Le lingue consentite sono fr, en, es, it, pt, ro. 