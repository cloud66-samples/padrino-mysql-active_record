#!/bin/bash
FILE=/tmp/rake_task_done

if [ -f $FILE ]
then
        echo "File $FILE exists..."
else
    cd $STACK_PATH
    bundle exec rake db:migrate
    touch /tmp/rake_task_done
fi
