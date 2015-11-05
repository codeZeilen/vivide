baseline
baseline: spec
	<baseline>
	
	spec for: #common do: [
		spec baseline: 'Signals' with: [
			spec repository: 'github://hpi-swa/signals:master/repository'].

		spec baseline: 'Animations' with: [
			spec
				repository: 'github://hpi-swa/animations:master/repository'].

		spec baseline: 'Widgets' with: [
			spec
				repository: 'github://hpi-swa/widgets:master/repository';
				loads: #(full)].
		
		spec package: 'Icons' with: [
			spec repository: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/SwaUtilities'].
		
		"Internal packages."
		spec package: 'Vivide' with: [
			spec
				requires: #(Animations Signals Widgets Icons);
				preLoadDoIt: #preLoad;
				postLoadDoIt: #postLoad].
		spec package: 'VivideScripts' with: [
			spec requires: #(Vivide)].
		spec package: 'VivideTests' with: [
			spec requires: #(Vivide)].		

		spec
			group: 'default' with: #('Vivide');
			group: 'dev' with: #('Vivide' 'VivideTests' 'VivideScripts');
			group: 'tests' with: #('VivideTests');
			group: 'TravisCI' with: #('VivideTests')].
