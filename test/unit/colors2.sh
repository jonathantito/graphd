# Copyright 2015 Google Inc. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#!/bin/bash

B=`basename $0 .sh`
cd `dirname $0`
source ./rungraphd

# test the duplicate detection in the isa-operator

rm -rf $D
rungraphd -d${D} -bty <<-'EOF'
	write (->((<-())  (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-())))
	write (->((<-())  (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-())))
	write (->((<-())  (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-())))
	write (->((<-())  (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-())))
	write (->((<-())  (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-())))
	write (->((<-())  (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-())))
	write (->((<-())  (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-())))
	write (->((<-())  (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-())))
	write (->((<-())  (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-())))
	write (->((<-())  (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-())))
	write (->((<-())  (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-())))
	write (->((<-())  (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-())))
	write (->((<-())  (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-())))
	write (->((<-())  (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-())))
	write (->((<-())  (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-())))
	write (->((<-())  (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-())))
	write (->((<-())  (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-())))
	write (->((<-())  (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-())))
	write (->((<-())  (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-())))
	write (->((<-())  (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-())))
	write (->((<-())  (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-())))
	write (->((<-())  (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-())))
	write (->((<-())  (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-())))
	write (->((<-())  (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-())))
	write (->((<-())  (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-())))
	write (->((<-())  (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-())))
	write (->((<-())  (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-())))
	write (->((<-())  (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-())))
	write (->((<-())  (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-())))
	write (->((<-())  (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-())))
	write (->((<-())  (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-())))
	write (->((<-())  (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-()) (<-())))
	write (name="teal")
	write (name="mauve")
	write (name="navy")
	write (name="cyan")
	write (name="azure")
	write (name="cerulean")
	write (name="cobalt")
	write (name="indigo")
	write (name="lavender")
	write (name="periwinkle")
	write (name="prussian")
	write (name="ultramarine")
	write (name="root"
		(<- name="number" (name="1" 
			(<- left=00000012400034568000000000000400)
			(<- left=00000012400034568000000000000407)))
		(<- name="number" (name="2"
			(<- left=00000012400034568000000000000401)
			(<- left=00000012400034568000000000000408)))
		(<- name="number" (name="3"
			(<- left=00000012400034568000000000000402)
			(<- left=00000012400034568000000000000409)))
		(<- name="number" (name="4"
			(<- left=00000012400034568000000000000403)
			(<- left=0000001240003456800000000000040a)))
		(<- name="number" (name="5"
			(<- left=00000012400034568000000000000404)
			(<- left=0000001240003456800000000000040b)))
		(<- name="number" (name="6"
			(<- left=00000012400034568000000000000405)
			(<- left=00000012400034568000000000000400))))
	read (pagesize=3 result=(cursor (name))
		(-> ((-> name="number" (name="root")))))
	read (pagesize=3 result=(cursor (name))
		cursor="cursor:83bb:[o:3]fixed:11:1024,1025,1026,1027,1028,1029,1031,1032,1033,1034,1035/3/"
		(-> ((-> name="number" (name="root")))))
	read (pagesize=3 result=(cursor (name))
		cursor="cursor:83ff:[o:6]fixed:11:1024,1025,1026,1027,1028,1029,1031,1032,1033,1034,1035/6/"
		(-> ((-> name="number" (name="root")))))
	read (pagesize=3 result=(cursor (name))
		cursor="cursor:8333:[o:9]fixed:11:1024,1025,1026,1027,1028,1029,1031,1032,1033,1034,1035/9/"
		(-> ((-> name="number" (name="root")))))
	read (pagesize=3 result=(cursor (name))
		cursor="null:"
		(-> ((-> name="number" (name="root")))))
	EOF
rm -rf $D
