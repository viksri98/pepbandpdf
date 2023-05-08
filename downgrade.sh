#!/bin/bash


sed -ie 's|<museScore version=".*">|<museScore version="3.02">|' $1
sed -ie 's|<programVersion>.*</programVersion>|<programVersion>3.6.2</programVersion>|' $1
sed -ie 's|<programRevision>.*</programRevision>|<programRevision></programVersion>|' $1

sed -ie 's|<style>title</style>|<style>Title</style>|g' $1
sed -ie 's|<style>composer</style>|<style>Composer</style>|g' $1
sed -ie 's|<style>instrument_excerpt</style>|<style>Instrument Name (Part)</style>|g' $1
