class AnalyticsController < ApplicationController

	def get_implant_brands_against_revision_surgery

	  patient_ids = Patient.where(:user_ids => current_user.id ).only([:_id])
      patient_ids = patient_ids.map { |b| b.id }.uniq
      surgery_ids = Surgery.where(:patient_id.in => patient_ids , :nature_of_surgery => "Revision" ).only([:id])
      surgery_ids = surgery_ids.map { |b| b.id }.uniq
      implant_type = KneeImplant.where(:surgery_ids.in => surgery_ids).only([:brand_name]).group_by{|item| item["brand_name"]}
      list = implant_type.map {|k,v| {"brand_name" => k , "count" =>v.length }}

	     respond_to do |format|

	                format.json{
	                   render :json =>{ :success => true ,
	                          :info => "implant vs Revision Surgery",
	                          :list => list ,
	                          :total_surgeries => surgery_ids.count } }
	    end 
 

	end 

	def get_implant_brands_against_primary_surgery

      patient_ids = Patient.where(:user_ids => current_user.id ).only([:_id])
      patient_ids = patient_ids.map { |b| b.id }.uniq
      surgery_ids = Surgery.where(:patient_id.in => patient_ids , :nature_of_surgery => "Primary" ).only([:id])
      surgery_ids = surgery_ids.map { |b| b.id }.uniq
      implant_type = KneeImplant.where(:surgery_ids.in => surgery_ids).only([:brand_name]).group_by{|item| item["brand_name"]}
      list = implant_type.map {|k,v| {"brand_name" => k , "count" =>v.length }}

	     respond_to do |format|

	                format.json{
	                   render :json =>{ :success => true ,
	                          :info => "",
	                          :list => list,
	                          :total_surgeries => surgery_ids.count } }
	    end 
 
	end 

	def get_primary_vs_revision_surgery
      patient_ids = Patient.where(:user_ids => current_user.id ).only([:_id])
      patient_ids = patient_ids.map { |b| b.id }.uniq
      primary_surgery_count = Surgery.where(:patient_id.in => patient_ids , :nature_of_surgery => "Primary" ).count
      revision_surgery_count = Surgery.where(:patient_id.in => patient_ids , :nature_of_surgery => "Revision" ).count
      surgery_count = Surgery.where(:patient_id.in => patient_ids).count

       respond_to do |format|

	                format.json{
	                   render :json =>{ :success => true ,
	                          :info => "",
	                          :primary_surgery_count => primary_surgery_count,
	                          :revision_surgery_count => revision_surgery_count,
	                          :surgery_count  => surgery_count } }
	    end 
	end

	def get_patients_by_age_and_surgeries
		age_limits  = [[20, 30], [30, 40], [40, 50], [50, 60], [60, 70], [70, 80], [80, 90]]
		list =[]
        age_limits.each do |item|
          patient_ids = Patient.where(:user_ids => current_user.id ,:age.gte => item[0] , :age.lt => item[1]).only([:_id])
          patient_ids = patient_ids.map { |b| b.id }
          surgery_count = Surgery.where(:patient_id.in => patient_ids ).count
          list << { "range" => item.to_s , "patient_count" => patient_ids.count , "surgery_count" => surgery_count}
      
        end 
		     respond_to do |format|

			                format.json{
			                   render :json =>{ :success => true ,
			                          :info => "Getting patient corresponding to their age",
			                          :list   => list } }
			    end 


	end 


    def get_patients_by_implant_brand_vs_score
	      patient_ids = Patient.where(:user_ids => current_user.id ).only([:_id])
	      patient_ids = patient_ids.map { |b| b.id }.uniq
          surgeries = Surgery.where(:patient_id.in => patient_ids )
          response_hash = Hash.new { |response_hash,k| response_hash[k] = [] }
          surgeries.each do | surgery |
          implant_type = KneeImplant.where(:surgery_ids => surgery.id)
          secure_score = surgery.secure_scores
          implant_type.each do |implant|
          secure_score.each do |item|
          response_hash[implant.brand_name] << item.patient_score
          end
          end
          end 
        
          respond_to do |format|

			                format.json{
			                   render :json =>{ :success => true ,
			                          :info => "Getting  implant vs score ",
			                          :data   => response_hash } }
		  end 



    end 

#include nature od surgery and age in the surgeries and patients



end 


