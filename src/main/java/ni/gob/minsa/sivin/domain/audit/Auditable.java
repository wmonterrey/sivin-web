package ni.gob.minsa.sivin.domain.audit;

public interface Auditable {
	
	public boolean isFieldAuditable(String fieldname);

}
