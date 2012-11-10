#!/bin/bash
if test -d ~/.blender/scripts; then 
  # Scripts dir is ready to be installed in
  cd ~/.blender/scripts
  if test -e ./mhx_export.py ; then
    # Probably already installed
    echo "MHX already installed"
  else
    # install MHX as symlinks
    echo "Setting up MHX importer for blender"
    ln -sf /usr/share/makehuman/importers/mhx/blender25x/mhx_export.py
    ln -sf /usr/share/makehuman/importers/mhx/blender25x/mhx_import.py
    ln -sf /usr/share/makehuman/importers/mhx/blender25x/mhx_lipsync.py
    ln -sf /usr/share/makehuman/importers/mhx/blender25x/pydrivers.py
  fi
fi

cd /usr/share/makehuman
./makehuman >/dev/null 2>&1
