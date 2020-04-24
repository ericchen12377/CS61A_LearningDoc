"""Optional questions for Lab 1"""

# While Loops

def falling(n, k):
    """Compute the falling factorial of n to depth k.

    >>> falling(6, 3)  # 6 * 5 * 4
    120
    >>> falling(4, 3)  # 4 * 3 * 2
    24
    >>> falling(4, 1)  # 4
    4
    >>> falling(4, 0)
    1
    Solution:
    total, stop = 1, n-k
    while n > stop:
        total, n = total*n, n-1
    return total
    """
    "*** YOUR CODE HERE ***"
    if(k == 0):
        return 1
    else:
        result = 1
        for i in range(k):
            result = result * (n - i)
        return result


def double_eights(n):
    """Return true if n has two eights in a row.
    >>> double_eights(8)
    False
    >>> double_eights(88)
    True
    >>> double_eights(2882)
    True
    >>> double_eights(880088)
    True
    >>> double_eights(12345)
    False
    >>> double_eights(80808080)
    False
    """
    "*** YOUR CODE HERE ***"
    return "88" in str(n)

