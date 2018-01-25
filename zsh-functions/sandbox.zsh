function forge {
  if [ $1 == "start" ]; then
    echo "Starting Forge sandbox"
    VBoxHeadless --startvm "Forge sandbox" &
  elif [ $1 == "ssh" ]; then
    ssh 'root@pal.sandbox.dev.bbc.co.uk'
  fi
}

function cosmos-sandbox {
  if [ $2 == "start" ]; then
    echo "Starting Cosmos (AWS) sandbox"
    VBoxHeadless --startvm "Cosmos (AWS) sandbox" &
  elif [ $2 == "ssh" ]; then
    echo "TOOD: Add ssh method to login"
  fi
}
