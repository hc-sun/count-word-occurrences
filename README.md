# count-word-occurrences
Count the number of occurrences of word (case insensitive) in text

## Build the Cython code
```
python setup.py build_ext --inplace
```

## Testing and profiling
```
python -m pytest count_word_occurrences.py -s
```
