# Ticket 003: Linux Permission Denied Error

## Ticket Summary

**Issue:** User could not access or modify a file in Ubuntu.

**Priority:** Low

**Category:** Permissions

## User Report

A file inside the user's working directory could not be edited due to a permission denied error.

## Initial Symptoms

- `cat` worked on some files
- Write operation failed on target file
- Error returned: `Permission denied`

## Troubleshooting Steps

1. Ran `ls -l` to inspect file permissions
2. Verified file owner and group
3. Checked current user with `whoami`
4. Confirmed that the file was owned by another user
5. Reviewed mode bits for read/write permissions

## Root Cause

The logged-in user did not have write permission to the target file.

## Resolution

Updated ownership and permissions using:

```bash
sudo chown user:user filename
chmod 644 filename
