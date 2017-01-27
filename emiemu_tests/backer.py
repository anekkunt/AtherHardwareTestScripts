import sys
import os
import shutil
import time

if len(sys.argv) != 3:
    print('Error. Enter Journal folder path & backup folder path.')
    sys.exit()

journal_folder = sys.argv[1]
backup_folder = sys.argv[2]
if not os.path.exists(backup_folder):
    os.makedirs(backup_folder)

if __name__ == '__main__':
    while True:
        for file in os.listdir(journal_folder):
            backup_files = os.listdir(backup_folder)
            if file not in backup_files:
                print('Adding new file, ', file)
                try:
                    shutil.copyfile(journal_folder + '/' + file, backup_folder + '/' + file)
                except Exception as e:
                    print('Error --> {}'.format(e))
        time.sleep(60 * 5)
