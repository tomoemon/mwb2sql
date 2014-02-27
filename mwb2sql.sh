# generate sql from mwb
# usage: sh mwb2sql.sh {mwb file} {output file}
# prepare: set env MYSQL_WORKBENCH

if [ "$MYSQL_WORKBENCH" = "" ]; then
  export MYSQL_WORKBENCH="mysql-workbench"
fi

export INPUT=$(cd $(dirname $1);pwd)/$(basename $1)
export OUTPUT=$(cd $(dirname $2);pwd)/$(basename $2)

"$MYSQL_WORKBENCH" \
  --open $INPUT \
  --run-python "
import os
import grt
from grt.modules import DbMySQLFE as fe
c = grt.root.wb.doc.physicalModels[0].catalog
fe.generateSQLCreateStatements(c, c.version, {})
fe.createScriptForCatalogObjects(os.getenv('OUTPUT'), c, {})" \
  --quit-when-done

