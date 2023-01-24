import mlconjug3
from functools import partial

params = {'lang': "fr", 
          'output_folder': "models", 
          'split_proportion': 0.8,
          'dataset': mlconjug3.DataSet, 
          'model': mlconjug3.Model(
              mlconjug3.SelectFromModel(mlconjug3.LinearSVC(penalty = "l1", max_iter = 12000, dual = False, verbose = 0)), 
              mlconjug3.SGDClassifier(loss = "log", penalty = "elasticnet", l1_ratio = 0.15, max_iter = 40000, alpha = 1e-5, verbose = 0)
          )
         }

ct = mlconjug3.utils.ConjugatorTrainer(**params)

ct.train()
ct.predict()
ct.evaluate()
ct.save()
