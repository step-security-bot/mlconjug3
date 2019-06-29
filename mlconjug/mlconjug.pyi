# Stubs for mlconjug.mlconjug (Python 3)

from .PyVerbiste import Verb, ConjugManager

# I am commenting out the sklearn imports because they have yet no stub files.
# from sklearn.feature_extraction.text import CountVectorizer
# from sklearn.base import BaseEstimator
from typing import Optional, Text, Mapping, List, Sequence, DefaultDict, KeysView, Any


_RESOURCE_PACKAGE: Text = __name__
_LANGUAGE_FULL: Mapping[Text, Text]
_VERBS: Mapping[Text, Verb]
_PRE_TRAINED_MODEL_PATH: Mapping[Text, Text]


def extract_verb_features(verb: Text,
                              lang: Text,
                              ngram_range: Text
                              ) -> Sequence[Text]: ...


class Conjugator:
    language: Text = ...
    conjug_manager: ConjugManager = ...
    model: Model = ...
    def __init__(self,
                 language: Text = ...,
                 model: Optional[Model] = ...
                 ) -> None: ...

    def __repr__(self) -> Text: ...

    def conjugate(self,
                  verb: Text,
                  subject: Text = ...
                  ) -> Optional[Verb]: ...

    def set_model(self,
                  model: Model
                  ) -> None: ...


class DataSet:
    verbs_dict: Mapping[Text, Mapping[Text, Text]] = ...
    verbs: KeysView[Text] = ...
    templates: List[Text] = ...
    verbs_list: List[Text] = ...
    templates_list: List[int] = ...
    dict_conjug: DefaultDict[Text,Sequence[Text]] = ...
    train_input: Sequence[Text] = ...
    train_labels: Sequence[int] = ...
    test_input: Sequence[Text] = ...
    test_labels: Sequence[int] = ...
    min_threshold: int = ...
    split_proportion: float = ...
    def __init__(self,
                 verbs_dict: Mapping[Text, Mapping[Text, Text]] = ...
                 ) -> None: ...

    def __repr__(self) -> Text: ...

    def construct_dict_conjug(self) -> None: ...

    def split_data(self,
                   threshold: int = ...,
                   proportion: float = ...
                   ) -> None: ...

class Model:
    pipeline: Model = ...
    language: Text = ...
    def __init__(self,
                 vectorizer: Optional[Any] = ...,
                 feature_selector: Optional[Any] = ...,
                 classifier: Optional[Any] = ...,
                 language: Optional[Text] = ...
                 ) -> None: ...

    def __repr__(self) -> Text: ...

    def train(self,
              samples: Sequence[Text],
              labels: Sequence[int],
              ) -> None: ...

    def predict(self,
                verbs: Sequence[Text]
                ) -> Sequence[int]: ...
