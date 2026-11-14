package;

import crowplexus.iris.Iris;

class KeyValueIteratorSmoke
{
	static function main():Void
	{
		var iris = new Iris('function run() { var total = 0; for (key => value in [2, 4, 6]) total += key + value; return total; }');
		var total:Dynamic = iris.call('run').returnValue;
		if (total != 15)
			throw 'Expected key-value iteration to produce 15, got $total';
		trace('Iris key-value iterator OK: $total');
	}
}
