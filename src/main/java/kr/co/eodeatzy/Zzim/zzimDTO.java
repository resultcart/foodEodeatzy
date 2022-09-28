/*
 * u_p_id varchar(15) PK 
u_s_id varchar(15) PK 
z_desc varchar(50)
 */
package kr.co.eodeatzy.Zzim;



public class zzimDTO{

	private String u_p_id;
	private String u_s_id;
	private String z_desc;
	
	private zzimStoreDTO zzimStoreDTO;
	
	public zzimStoreDTO getZzimstoredto() {
		return zzimStoreDTO;
	}
	public void setZzimstoredto(zzimStoreDTO zzimstoredto) {
		this.zzimStoreDTO = zzimstoredto;
	}
	
	@Override
	public String toString() {
		return "zzimDTO [u_p_id=" + u_p_id + ", u_s_id=" + u_s_id + ", z_desc=" + z_desc + ", zzimstoredto=" + zzimStoreDTO
				+ "]";
	}
	public String getU_p_id() {
		return u_p_id;
	}
	public void setU_p_id(String u_p_id) {
		this.u_p_id = u_p_id;
	}
	public String getU_s_id() {
		return u_s_id;
	}
	public void setU_s_id(String u_s_id) {
		this.u_s_id = u_s_id;
	}
	public String getZ_desc() {
		return z_desc;
	}
	public void setZ_desc(String z_desc) {
		this.z_desc = z_desc;
	}
}
