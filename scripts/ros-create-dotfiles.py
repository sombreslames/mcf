#!/usr/bin/env python
# encoding: utf-8

import os
import subprocess


def get_package_name():
    return os.path.basename(os.getcwd())


def get_includes(pack):
    includes = subprocess.check_output(["rospack", "cflags-only-I",
                                        pack]).strip().split(' ')
    return ['-I' + f for f in includes]


def create_vim(pack):
    vim = open('.vim', 'w')
    vim.write('let makeprg="rosmake\ %s"\n' % pack)
    vim.write('au FileType cpp :UltiSnipsAddFiletypes ros.cpp\n')
    vim.close()


def create_clang_complete(includes):
    clang = open('.clang_complete', 'w')
    clang.write('-std=c++0x\n')
    clang.write('%s' % '\n'.join(includes))
    clang.close()

if __name__ == '__main__':
    pack = get_package_name()
    includes = get_includes(pack)
    create_vim(pack)
    create_clang_complete(includes)
