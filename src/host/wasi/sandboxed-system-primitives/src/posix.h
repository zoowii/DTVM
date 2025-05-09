// Part of the Wasmtime Project, under the Apache License v2.0 with LLVM
// Exceptions. See
// https://github.com/bytecodealliance/wasmtime/blob/main/LICENSE for license
// information.
//
// Significant parts of this file are derived from cloudabi-utils. See
// https://github.com/bytecodealliance/wasmtime/blob/main/lib/wasi/sandboxed-system-primitives/src/LICENSE
// for license information.
//
// The upstream file contains the following copyright notice:
//
// Copyright (c) 2016-2018 Nuxi, https://nuxi.nl/

#ifndef POSIX_H
#define POSIX_H

#include "locking.h"

struct fd_entry;
struct fd_prestat;
struct syscalls;

struct fd_table {
  struct rwlock lock;
  struct fd_entry *entries;
  size_t size;
  size_t used;
};

struct fd_prestats {
  struct rwlock lock;
  struct fd_prestat *prestats;
  size_t size;
  size_t used;
};

struct argv_environ_values {
  const char *argv_buf;
  size_t argv_buf_size;
  char **argv_list;
  size_t argc;
  char *environ_buf;
  size_t environ_buf_size;
  char **environ_list;
  size_t environ_count;
};

#ifdef __cplusplus
extern "C" {
#endif

bool fd_table_init(struct fd_table *);
bool fd_table_insert_existing(struct fd_table *, __wasi_fd_t, int);
bool fd_prestats_init(struct fd_prestats *);
bool fd_prestats_insert(struct fd_prestats *, const char *, __wasi_fd_t);
bool argv_environ_init(struct argv_environ_values *argv_environ, char *argv_buf,
                       size_t argv_buf_size, char **argv_list, size_t argc,
                       char *environ_buf, size_t environ_buf_size,
                       char **environ_list, size_t environ_count);
void argv_environ_destroy(struct argv_environ_values *argv_environ);
void fd_table_destroy(struct fd_table *ft);
void fd_prestats_destroy(struct fd_prestats *pt);

#ifdef __cplusplus
}
#endif

#endif
