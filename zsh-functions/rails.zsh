r() {
  if [ -e bin/rails ]; then
    bin/rails "$@"
  else
    rails "$@"
  fi
}
