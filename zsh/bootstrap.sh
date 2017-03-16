#!/bin/bash

install_zsh () {
  local dir="${HOME}/.zprezto"
  local git="git@github.com:pricco/dotzsh.git"
  local branch="master"

  program_exists "git"
  clone "${dir}" "${git}" "${branch}"
  # shellcheck source=/dev/null
  source "${dir}/bootstrap.sh"
}

install_zsh
