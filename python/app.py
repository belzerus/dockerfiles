#!/usr/bin/python
'''
Simple python example run from docker image
'''


def print_func(msg):
    '''
    print_func()
        Print a hash guarded msg
    '''

    length = len(msg) + 4
    fullhashline = ""
    for _ in range(0, length):
        fullhashline += '#'

    sparsehashline = "#"
    for _ in range(1, (length - 1)):
        sparsehashline += ' '
    sparsehashline += '#'

    print(''.join([fullhashline, '\n', fullhashline, '\n', sparsehashline,
                   '\n', '# ', msg, ' #', '\n', sparsehashline, '\n',
                   fullhashline, '\n', fullhashline]))


def _main():
    '''
    main() starts here..
    '''
    mymsg = "This is a very simple python application," \
            " executed from a docker container.."
    print_func(mymsg)


if __name__ == "__main__":
    _main()
