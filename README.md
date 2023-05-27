# tools
Some helpful tools when I'm working on Linux.

# count-lines
Count Java source code lines, excluding test classes.

Assumptions:

- You are using Linux
- You want to count lines in `.java` files
- You want to exclude test classes
- You are using a Maven project structure
- You have the following installed: `find`, `grep`, `xargs`, `wc`

**Usage:**
```
$ cd java-project/

$ ls
mvnw  mvnw.cmd  package.sh  pom.xml  README.md  src  target

$ ~/tools/count-lines.sh
325
```

**Credits:**

- https://stackoverflow.com/a/16872227
- https://stackoverflow.com/a/48254241
- https://www.gnu.org/software/grep/manual/grep.html#Usage

# delete-all-gpg-keys

Delete all GPG keys.

Assumptions:

- You are using Linux
- You have the following installed: `gpg`, `awk`, `xargs`

# verify-hash

Verify the hash of a file. Prints the checksum if valid, otherwise prints 'INVALID CHECKSUM'.

`verify-hash [algorithm] [file] [checksum-file]`

Assumptions:

- You are using Linux
- You have the following installed: `shasum`, `awk`, `head`, `xargs`

**Usage:**
```
$ ~/tools/verify-hash.sh 512 file.tar.gz file.tar.gz.sha512
900bdeeeae550d2d2b3920fe0e00e41b0069f32c019d566465015bdd1b3866395cbe016e22d95d25d51d3a5e614af2c83ec9b282d73309f644859bbad08b63db
```
