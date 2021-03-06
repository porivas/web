package admin.model;

public class Coach extends BaseModel {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column coach.coach_id
     *
     * @mbggenerated
     */
    private Integer coachId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column coach.coach_name
     *
     * @mbggenerated
     */
    private String coachName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column coach.comments
     *
     * @mbggenerated
     */
    private String comments;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column coach.start
     *
     * @mbggenerated
     */
    private String start;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table coach
     *
     * @mbggenerated
     */
    public Coach(Integer coachId, String coachName, String comments, String start) {
        this.coachId = coachId;
        this.coachName = coachName;
        this.comments = comments;
        this.start = start;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table coach
     *
     * @mbggenerated
     */
    public Coach() {
        super();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column coach.coach_id
     *
     * @return the value of coach.coach_id
     *
     * @mbggenerated
     */
    public Integer getCoachId() {
        return coachId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column coach.coach_id
     *
     * @param coachId the value for coach.coach_id
     *
     * @mbggenerated
     */
    public void setCoachId(Integer coachId) {
        this.coachId = coachId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column coach.coach_name
     *
     * @return the value of coach.coach_name
     *
     * @mbggenerated
     */
    public String getCoachName() {
        return coachName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column coach.coach_name
     *
     * @param coachName the value for coach.coach_name
     *
     * @mbggenerated
     */
    public void setCoachName(String coachName) {
        this.coachName = coachName == null ? null : coachName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column coach.comments
     *
     * @return the value of coach.comments
     *
     * @mbggenerated
     */
    public String getComments() {
        return comments;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column coach.comments
     *
     * @param comments the value for coach.comments
     *
     * @mbggenerated
     */
    public void setComments(String comments) {
        this.comments = comments == null ? null : comments.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column coach.start
     *
     * @return the value of coach.start
     *
     * @mbggenerated
     */
    public String getStart() {
        return start;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column coach.start
     *
     * @param start the value for coach.start
     *
     * @mbggenerated
     */
    public void setStart(String start) {
        this.start = start == null ? null : start.trim();
    }
}