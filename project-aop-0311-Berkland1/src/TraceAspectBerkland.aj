
public aspect TraceAspectBerkland {
	pointcut classToTrace(): within(*App);
	pointcut methodToTrace(): classToTrace() && execution(String getName());
	
	before(): methodToTrace() {
		System.out.print("[BGN]");
		System.out.println("\t-->\t" + thisJoinPointStaticPart.getSignature() + ", " + thisJoinPointStaticPart.getSourceLocation().getLine());
	}
	
	after(): methodToTrace() {
		System.out.print("[END]");
		System.out.println("\t<--\t" + thisJoinPointStaticPart.getSourceLocation().getFileName());
	}
}
