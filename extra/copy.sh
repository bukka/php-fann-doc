#!/bin/bash
if readlink ${BASH_SOURCE[0]} > /dev/null; then
  FANN="$( dirname "$( dirname "$( readlink ${BASH_SOURCE[0]} )" )" )"
else  
  FANN="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )"/.. && pwd )"
fi
DOC="$( dirname "$( dirname "$( dirname $FANN )" )" )"

cp $DOC/doc-base/manual.xml.in $FANN/extra
cp $DOC/en/language-snippets.ent $FANN/extra
