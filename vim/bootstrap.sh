#!/bin/bash

install_vim () {
  local dir="${HOME}/.dotvim"
  local git="git@github.com:pricco/dotvim.git"
  local branch="master"

  program_exists "git"
  clone "${dir}" "${git}" "${branch}"
  # shellcheck source=/dev/null
  source "${dir}/bootstrap.sh"
}

install_vim
