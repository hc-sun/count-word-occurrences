cpdef int count_occurrences_in_text(str word, str text):
    """
    Return the number of occurrences of word (case insensitive) in text
    """

    cdef str lower_word = word.lower()
    cdef str lower_text = text.lower()
    cdef int count = 0

    if " " in lower_word:
        return lower_text.count(lower_word)
    else:
        for char in ',.:!?_':
            lower_text = lower_text.replace(char, ' ')
        if "''" in lower_text:
            lower_word = lower_word.translate(str.maketrans("", "", "'"))
            lower_text = lower_text.translate(str.maketrans("", "", "'"))
        words = lower_text.split()
        for w in words:
            if w == lower_word:
                count += 1
        return count