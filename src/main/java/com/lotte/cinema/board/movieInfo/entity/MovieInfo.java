package com.lotte.cinema.board.movieInfo.entity;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.PrePersist;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.ColumnDefault;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name="MOVIE_INFO")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class MovieInfo {

    @Id
    @GeneratedValue(strategy=GenerationType.SEQUENCE, generator="movieInfo_no_generator")
    @SequenceGenerator(name="movieInfo_no_generator", sequenceName="movieInfo_no", allocationSize=1)
    private long movieNo;

    @Column(nullable = false)
    private String title;

    @Column(nullable = false)
    private int playTime;
    
    @ColumnDefault("0.0")
    @Column(nullable = false)
    private double reservation;
    
    @ColumnDefault("0.0")
    @Column(nullable = false)
    private double score;

    @Column(nullable = false)
    private String poster;
    
    private String slidePoster;
    
    @Column
    private String video;
    
    @Column(nullable = false)
    private String explanation;

    @Column(nullable = false)
    private String grade;

    @Column(nullable = false)
    private LocalDate releaseDate;

    @ColumnDefault("0")
    @Column(nullable = false)
    private int status;

    @ColumnDefault("0")
    @Column(nullable = false)
    private int viewers;

    @ColumnDefault("0")
    @Column(nullable = false)
    private int likes;

    @Column(nullable = false)
    @ColumnDefault("'N'")
    private String arte;

    @Lob
    @Column
    private String content;

    @ElementCollection
    @CollectionTable(name = "MOVIE_GENRES", joinColumns = @JoinColumn(name = "movie_no"))
    @Column(name = "genre")
    private List<String> genres;

    @Column
    private String director;

    @ElementCollection
    @CollectionTable(name = "MOVIE_CAST", joinColumns = @JoinColumn(name = "movie_no"))
    @Column(name = "cast_member")
    private List<String> cast;

    @PrePersist
    protected void onCreate() {
        if (status == 0) {
            status = 0;
        }
        if (viewers == 0) {
            viewers = 0;
        }
        if (likes == 0) {
            likes = 0;
        }
        if (reservation == 0.0) {
        	reservation = 0.0;
        }
        if (score == 0.0) {
        	score = 0.0;
        }
        if (arte == null) {
            arte = "N";
        }
    }
}