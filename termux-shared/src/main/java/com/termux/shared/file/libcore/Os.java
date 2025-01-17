package com.termux.shared.file.libcore;

import java.io.FileDescriptor;

public class Os {
    public static native String readlink(String path) throws ErrnoException;
    public static native void symlink(String oldPath, String newPath) throws ErrnoException;
    public static native StructStat stat(String path) throws ErrnoException;
    public static native StructStat lstat(String path) throws ErrnoException;
    public static native StructStat fstat(FileDescriptor fd) throws ErrnoException;
    public static native void chmod(String path, int mode) throws ErrnoException;

    static { System.loadLibrary("posix"); }
}
