package ;

import MethodInfo;

/**
 *
 */
class Utilities
{
	function new()
	{
		
	}

	public static function getCtagsFields(entry)
	{
		var declarationRegex = ~/\/\^(.*)\$\/;"/;
		declarationRegex.match(entry);
		var fields = (declarationRegex.matchedLeft()
						+ declarationRegex.matchedRight()).split("\t");
		for (index in 0...fields.length)
		{
			fields[index] = StringTools.trim(fields[index]);

			if (fields[index] == "")
				fields[index] = StringTools.trim(declarationRegex.matched(1));
		}
		return fields;
	}

	public static function getScopeString(classInfo:ClassInfo)
	{
		var scopeString =
			if (classInfo.scope != null)
				"::" + Lambda.array(classInfo.scope).join("::");
			else
				"";
	
		return Std.string("${classInfo.type}:${classInfo.namespace}$scopeString::${classInfo.name}");
	}

    public static function getQualifiedName(classInfo:ClassInfo, separator="::")
    {
        if (classInfo.scope != null)
        {
            var scope = Lambda.array(classInfo.scope).join(separator);
            return Std.string("${scope}${separator}${classInfo.name}");
        }

        return classInfo.name;
    }

    public static function getNativePrefix(classInfo:ClassInfo)
    {
		var prefix = "hx";

		if (classInfo.scope != null)
		{
			var scopeString = Lambda.array(classInfo.scope).join("_");
			prefix = Std.string("${prefix}_$scopeString");
		}

		return Std.string("${prefix}_${classInfo.name}");
    }

    public static function getNativeFunctionName(classInfo:ClassInfo, methodInfo:MethodInfo)
    {
        var prefix = getNativePrefix(classInfo);

        return
            if (methodInfo.type == mtConstructor)
                Std.string("${prefix}_Construct");
            else if (methodInfo.type == mtStatic)
                Std.string("${prefix}_static_${methodInfo.name}")
            else
                Std.string("${prefix}_${methodInfo.name}");
    }

    public static function getCtagsExecutable()
    {
        return
            if (Sys.systemName().toLowerCase().indexOf("windows") != -1)
                "ctags\\ctags.exe"
            else
                "ctags";
    }
}
