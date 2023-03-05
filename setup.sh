setup ()
{
  config=$1
  mkdir -p "~/.config/${config}"
  stow -v $config -t "~/.config/${config}"
}

setup $1
