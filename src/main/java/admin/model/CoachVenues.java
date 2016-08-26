package admin.model;

public class CoachVenues extends BaseModel {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column coach_venues.coach_venues_id
     *
     * @mbggenerated
     */
    private String coachVenuesId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column coach_venues.coach_id
     *
     * @mbggenerated
     */
    private Integer coachId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column coach_venues.venues_id
     *
     * @mbggenerated
     */
    private Integer venuesId;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table coach_venues
     *
     * @mbggenerated
     */
    public CoachVenues(String coachVenuesId, Integer coachId, Integer venuesId) {
        this.coachVenuesId = coachVenuesId;
        this.coachId = coachId;
        this.venuesId = venuesId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table coach_venues
     *
     * @mbggenerated
     */
    public CoachVenues() {
        super();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column coach_venues.coach_venues_id
     *
     * @return the value of coach_venues.coach_venues_id
     *
     * @mbggenerated
     */
    public String getCoachVenuesId() {
        return coachVenuesId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column coach_venues.coach_venues_id
     *
     * @param coachVenuesId the value for coach_venues.coach_venues_id
     *
     * @mbggenerated
     */
    public void setCoachVenuesId(String coachVenuesId) {
        this.coachVenuesId = coachVenuesId == null ? null : coachVenuesId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column coach_venues.coach_id
     *
     * @return the value of coach_venues.coach_id
     *
     * @mbggenerated
     */
    public Integer getCoachId() {
        return coachId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column coach_venues.coach_id
     *
     * @param coachId the value for coach_venues.coach_id
     *
     * @mbggenerated
     */
    public void setCoachId(Integer coachId) {
        this.coachId = coachId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column coach_venues.venues_id
     *
     * @return the value of coach_venues.venues_id
     *
     * @mbggenerated
     */
    public Integer getVenuesId() {
        return venuesId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column coach_venues.venues_id
     *
     * @param venuesId the value for coach_venues.venues_id
     *
     * @mbggenerated
     */
    public void setVenuesId(Integer venuesId) {
        this.venuesId = venuesId;
    }
}