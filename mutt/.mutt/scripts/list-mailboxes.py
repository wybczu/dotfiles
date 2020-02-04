#!/usr/bin/python3

import argparse
from pathlib import Path
from typing import List


def list_mailboxes(path: Path) -> List[str]:
    ignore_list = [".notmuch", ".customflags", ".subscriptions", "INBOX"]
    mailboxes = []
    for m in path.glob("*"):
        if m.name in ignore_list:
            continue
        mailboxes.append(f'"+{str(m.name)}"')
    return sorted(mailboxes)


def main():
    parser = argparse.ArgumentParser(
        description="Get a list of local mailboxes for mutt"
    )
    parser.add_argument("mail_dir", help="Location of user's maildir")

    args = parser.parse_args()

    print(" ".join(list_mailboxes(Path(args.mail_dir))))


if __name__ == "__main__":
    main()
