# Stubs for mlconjug.PyVerbiste (Python 3)

from typing import Text, Sequence, Mapping, Dict, Tuple, Optional, Union, Set, TextIO

__author__: Text
__author_email__: Text
_RESOURCE_PACKAGE: Text = __name__
_LANGUAGES: Tuple[Text]
_VERBS_RESOURCE_PATH: Mapping[Text, Text]
_CONJUGATIONS_RESOURCE_PATH: Mapping[Text, Text]
_ABBREVS: Tuple[Text]
_PRONOUNS: Mapping[Text, Mapping[Text, Tuple[Text]]]
_IMPERATIVE_PRONOUNS: Mapping[Text, Optional[Mapping[Text, Tuple[Text]]]]
_GENDER: Mapping[Text, Optional[Mapping[Text, Tuple[Text]]]]
_NEGATION: Mapping[Text, Text]

# Declare Complex types for clarity.
_VerbsDict = Mapping[Text, Mapping[Text, Text]]
_Tense = Mapping[Text, Sequence[Optional[Tuple[int,Text]]]]
_Mood = Dict[Text, Union[Text, _Tense]]
_ConjugInfo = Mapping[Text, _Mood]
_Conjugations = Mapping[Text, _ConjugInfo]
_PathLike = Union[Text, TextIO]


class ConjugManager:
    language: Text = ...
    verbs: Mapping[Text, Mapping[Text, Text]] = ...
    conjugations: _Conjugations = ...
    _allowed_endings: Set[Text] = ...
    templates: Sequence[Text] = ...
    def __init__(self,
                 language: Text = ...
                 ) -> None: ...

    def __repr__(self) -> Text: ...

    def _load_verbs(self,
                    verbs_file: _PathLike
                    ) -> None: ...

    def _detect_allowed_endings(self) -> Set[Text]: ...

    def is_valid_verb(self,
                      verb: Text
                      ) -> bool: ...

    def _load_conjugations(self,
                           conjugations_file: _PathLike
                           ) -> None: ...

    def get_verb_info(self,
                      verb: Text
                      ) -> Optional[VerbInfo]: ...

    def get_conjug_info(self,
                        template: Text
                        ) -> Optional[_ConjugInfo]: ...


class Verbiste(ConjugManager):
    def _load_verbs(self,
                    verbs_file: _PathLike
                    ) -> None: ...

    def _parse_verbs(self,
                     file: _PathLike
                     ) -> _PathLike: ...

    def _load_conjugations(self,
                           conjugations_file: _PathLike
                           ) -> None: ...

    def _parse_conjugations(self,
                            file: _PathLike
                            ) -> _Conjugations: ...

    def _load_tense(self,
                    tense: Text
                    ) -> _Tense: ...


class VerbInfo:
    __slots__: Tuple[Text] = ...
    infinitive: Text = ...
    root: Text = ...
    template: Text = ...
    def __init__(self,
                 infinitive: Text,
                 root: Text,
                 template: Text
                 ) -> None: ...

    def __repr__(self) -> Text: ...

    def __eq__(self,
               other: object
               ) -> bool: ...


class Verb:
    __slots__: Tuple[Text] = ...
    language: Text = ...
    name: Text = ...
    verb_info: VerbInfo = ...
    conjug_info: _ConjugInfo = ...
    subject: Text = ...
    predicted: bool = ...
    confidence_score: Optional[float] = ...
    def __init__(self,
                 verb_info: VerbInfo,
                 conjug_info: _ConjugInfo,
                 subject: Text = ...
                 ) -> None: ...

    def __repr__(self) -> Text: ...

    def _load_conjug(self) -> None: ...


class VerbFr(Verb):
    def _load_conjug(self) -> None: ...


class VerbEn(Verb):
    def _load_conjug(self) -> None: ...


class VerbEs(Verb):
    def _load_conjug(self) -> None: ...


class VerbIt(Verb):
    def _load_conjug(self) -> None: ...


class VerbPt(Verb):
    def _load_conjug(self) -> None: ...


class VerbRo(Verb):
    def _load_conjug(self) -> None: ...