#!/usr/bin/env python3
import argparse

BASE_LENGTH = {2:8, # binary has usually 8 digits for a byte
               8:3, # base 8 has max 3 digits
               16:2} # base 16 has usually 2 digits

def split_on_base(number, base):
    data_list = []
    temp = ''
    for c in number:
        temp += c
        if len(temp) == BASE_LENGTH[base]:
            data_list.append(temp)
            temp = ''
    if temp != '':
        data_list.append(temp)
    return data_list

def main(numbers, base):
    ret = b''
    if len(numbers) == 1:
        in_data = split_on_base(numbers[0], base)
    else:
        in_data = numbers

    for c in in_data:
        ret += bytes(chr(int(c, base)), 'utf-8')
    print(ret)


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Convert a list of numbers into a word')
    parser.add_argument('numbers', nargs='+', help='A list of numbers encoded in particular base')
    parser.add_argument('-b', dest='base', type=int, default='16')

    args = parser.parse_args()
    main(args.numbers, args.base)
