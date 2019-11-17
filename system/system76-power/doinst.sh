config() {
  NEW="$1"
  OLD="$(dirname $NEW)/$(basename $NEW .new)"
  # If there's no config file by that name, mv it over:
  if [ ! -r $OLD ]; then
    mv $NEW $OLD
  elif [ "$(cat $OLD | md5sum)" = "$(cat $NEW | md5sum)" ]; then
    # toss the redundant copy
    rm $NEW
  fi
  # Otherwise, we leave the .new copy for the admin to consider...
}

preserve_perms() {
  NEW="$1"
  OLD="$(dirname $NEW)/$(basename $NEW .new)"
  if [ -e $OLD ]; then
    cp -a $OLD ${NEW}.incoming
    cat $NEW > ${NEW}.incoming
    mv ${NEW}.incoming $NEW
  fi
  config $NEW
}

<<<<<<< HEAD:system/gitlab/doinst.sh
# Keep same perms on :
preserve_perms etc/gitlab/gitlab.rb.new
config etc/rc.d/rc.gitlab.new
=======
preserve_perms etc/rc.d/rc.system76-power.new
config etc/logrotate.d/system76-power.new
>>>>>>> ponce:system/system76-power/doinst.sh
