package mandoo.DTO;

import java.util.Date;

public class WorkDTO {
    private String workId;
    private String userId;
    private String planId;
    private String itemCode;
    private Date workWrite;
    private Date workEndate;
    private String workName;
    private String workDo;

    // Getters and Setters
    public String getWorkId() {
        return workId;
    }

    public void setWorkId(String workId) {
        this.workId = workId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getPlanId() {
        return planId;
    }

    public void setPlanId(String planId) {
        this.planId = planId;
    }

    public String getItemCode() {
        return itemCode;
    }

    public void setItemCode(String itemCode) {
        this.itemCode = itemCode;
    }

    public Date getWorkWrite() {
        return workWrite;
    }

    public void setWorkWrite(Date workWrite) {
        this.workWrite = workWrite;
    }

    public Date getWorkEndate() {
        return workEndate;
    }

    public void setWorkEndate(Date workEndate) {
        this.workEndate = workEndate;
    }

    public String getWorkName() {
        return workName;
    }

    public void setWorkName(String workName) {
        this.workName = workName;
    }

    public String getWorkDo() {
        return workDo;
    }

    public void setWorkDo(String workDo) {
        this.workDo = workDo;
    }
}
